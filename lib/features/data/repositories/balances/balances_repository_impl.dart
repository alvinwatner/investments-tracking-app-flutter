import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:in_ai/core/error/failure.dart';
import 'package:in_ai/core/service/network_info.dart';
import 'package:in_ai/features/data/data_sources/balances_remote_data_sources.dart';
import 'package:in_ai/features/data/models/data_api_failure/data_api_failure.dart';
import 'package:in_ai/features/data/models/result/result_response.dart';

import '../../../domain/repositories/balances/balances_repository.dart';

class BalancesRepositoryImpl implements BalancesRepository {
  final BalancesRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  BalancesRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  String getErrorMessageFromEndpoint(
      dynamic dynamicErrorMessage, String httpErrorMessage, int statusCode) {
    if (dynamicErrorMessage is Map &&
        dynamicErrorMessage.containsKey('message') &&
        dynamicErrorMessage['message'].isNotEmpty) {
      return '$statusCode ${dynamicErrorMessage['message']}';
    } else if (dynamicErrorMessage is String) {
      return httpErrorMessage;
    } else {
      return httpErrorMessage;
    }
  }

  @override
  Future<Either<Failure, ResultResponse>> getBalancesInfo() async {
    bool isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final ResultResponse response =
            await remoteDataSource.getBalancesInfo();
        return Right(response);
      } on DioError catch (error) {
        if (error.response == null) {
          return Left(
            ServerFailure(
              DataApiFailure(message: error.message),
            ),
          );
        }
        final errorResponseData = error.response?.data;
        dynamic errorData;
        String errorMessage = getErrorMessageFromEndpoint(
          errorResponseData,
          error.message,
          error.response?.statusCode ?? 400,
        );
        if (errorResponseData is Map &&
            errorResponseData.containsKey('errors')) {
          errorData = errorResponseData['errors'];
        }
        return Left(
          ServerFailure(
            DataApiFailure(
              message: errorMessage,
              statusCode: error.response?.statusCode,
              httpMessage: error.message,
              errorData: errorData,
            ),
          ),
        );
      } on TypeError catch (error) {
        return Left(ParsingFailure(error.toString()));
      }
    } else {
      return Left(ConnectionFailure());
    }
  }
}
