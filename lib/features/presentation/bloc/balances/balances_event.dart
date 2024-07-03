part of 'balances_bloc.dart';

abstract class BalancesEvent extends Equatable {
  const BalancesEvent();

  @override
  List<Object> get props => [];
}

class BalancesGetInitialDataTriggered extends BalancesEvent {}