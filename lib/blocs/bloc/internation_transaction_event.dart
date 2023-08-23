part of 'internation_transaction_bloc.dart';

abstract class InternationTransactionEvent extends Equatable {
  const InternationTransactionEvent();

  @override
  List<Object> get props => [];
}

class InternationTransactionGet extends InternationTransactionEvent {}
