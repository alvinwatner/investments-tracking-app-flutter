import 'package:dio/dio.dart';
import 'package:pokemon/config/flavor_config.dart';
import 'package:pokemon/core/util/dummy_data.dart';
import 'package:pokemon/features/data/models/result/result_response.dart';

abstract class BalancesRemoteDataSource {
  /// Call endpoint [BaseUrlConfig]/v2/
  ///
  /// Throws [DioError] untuk semua error kode

  /// Call endpoint [BaseUrlConfig]/v2/pokemon/{name}
  ///
  /// Throws [DioError] for all exception

  Future<ResultResponse> getBalancesInfo();
}

class BalancesRemoteDataSourceImpl implements BalancesRemoteDataSource {
  final Dio dio;

  BalancesRemoteDataSourceImpl({
    required this.dio,
  });

  final baseUrl = FlavorConfig.instance!.values!.baseUrlEndpoint;

  @override
  Future<ResultResponse> getBalancesInfo() async {
    Future.delayed(
      Duration(seconds: 3),
      () {},
    );
    return ResultResponse.fromJson(balancesData);
  }
}
