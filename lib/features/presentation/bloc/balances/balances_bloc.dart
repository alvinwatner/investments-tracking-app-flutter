import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:in_ai/core/use_cases/use_case.dart';

import '../../../../core/error/failure.dart';
import '../../../data/models/result/result_response.dart';
import '../../../domain/use_cases/get_balances_info/get_balances_info.dart';

part 'balances_event.dart';
part 'balances_state.dart';

class BalancesBloc extends Bloc<BalancesEvent, BalancesState> {
  final GetBalancesInfo getBalancesInfo;
  BalancesBloc({required this.getBalancesInfo})
      : super(BalancesInitialState()) {
    on<BalancesGetInitialDataTriggered>(_onGetInitialDataTriggered);
  }

  void _onGetInitialDataTriggered(
    BalancesGetInitialDataTriggered event,
    Emitter<BalancesState> emit,
  ) async {
    emit(BalancesLoadInProgress());
    final result = await getBalancesInfo(NoParams());

    emit(
      result.fold(
        (failure) {
          var errorMessage = '';
          if (failure is ServerFailure) {
            errorMessage = failure.dataApiFailure.message ?? errorMessage;
          } else if (failure is ConnectionFailure) {
            errorMessage = failure.errorMessage;
          } else if (failure is ParsingFailure) {
            errorMessage = failure.errorMessage;
          }
          return BalancesLoadFailure(
            errorMessage: errorMessage,
          );
        },
        (response) => BalancesLoadSuccess(
          resultResponse: response,
        ),
      ),
    );
  }
}
