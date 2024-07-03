// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import '../../../../../core/error/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../../../data/models/result/result_response.dart';
import '../../repositories/balances/balances_repository.dart';

class GetBalancesInfo implements UseCase<ResultResponse, NoParams> {
  final BalancesRepository repository;
  GetBalancesInfo({
    required this.repository,
  });

  @override
  Future<Either<Failure, ResultResponse>> call(NoParams params) async {
    return repository.getBalancesInfo();
  }
}
