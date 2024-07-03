// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'balances_bloc.dart';

abstract class BalancesState extends Equatable {
  const BalancesState();

  @override
  List<Object> get props => [];
}

class BalancesInitialState extends BalancesState {}

class BalancesLoadInProgress extends BalancesState {}

class BalancesLoadSuccess extends BalancesState {
  final ResultResponse resultResponse;
  const BalancesLoadSuccess({
    required this.resultResponse,
  });

  @override
  List<Object> get props => [resultResponse];

  @override
  String toString() {
    return 'BalancesLoadSuccess{resultResponse: $resultResponse}';
  }  
}

class BalancesLoadFailure extends BalancesState {
  final String errorMessage;
  const BalancesLoadFailure({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() {
    return 'BalancesLoadFailure{errorMessage: $errorMessage}';
  }
}
