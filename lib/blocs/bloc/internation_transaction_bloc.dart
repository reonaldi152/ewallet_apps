import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

// import '../../models/transaction_model.dart';
import '../../models/transaction_model copy.dart';
import '../../services/transaction_service.dart';

part 'internation_transaction_event.dart';
part 'internation_transaction_state.dart';

class InternationTransactionBloc
    extends Bloc<InternationTransactionEvent, InternationTransactionState> {
  InternationTransactionBloc() : super(InternationTransactionInitial()) {
    on<InternationTransactionEvent>((event, emit) async {
      try {
        emit(InternationTransactionLoading());

        final interTransactions =
            await TransactionService().getTransactionsAsing();

        emit(InternationTransactionSuccess(interTransactions));
      } catch (e) {
        print(e);
        emit(InternationTransactionFailed(e.toString()));
      }
    });
  }
}
