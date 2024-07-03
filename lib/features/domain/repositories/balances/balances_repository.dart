import 'package:dartz/dartz.dart';
import 'package:pokemon/features/data/models/result/result_response.dart';

import '../../../../core/error/failure.dart';

abstract class BalancesRepository {
  Future<Either<Failure, ResultResponse>> getBalancesInfo();
}
