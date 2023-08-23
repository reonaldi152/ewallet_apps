part of 'internation_transaction_bloc.dart';

abstract class InternationTransactionState extends Equatable {
  const InternationTransactionState();

  @override
  List<Object> get props => [];
}

class InternationTransactionInitial extends InternationTransactionState {}

class InternationTransactionLoading extends InternationTransactionState {}

class InternationTransactionFailed extends InternationTransactionState {
  final String e;
  const InternationTransactionFailed(this.e);

  @override
  List<Object> get props => [e];
}

class InternationTransactionSuccess extends InternationTransactionState {
  final List<AsingTransactionModel> transactionsAsing;
  const InternationTransactionSuccess(this.transactionsAsing);

  @override
  List<Object> get props => [transactionsAsing];
}
