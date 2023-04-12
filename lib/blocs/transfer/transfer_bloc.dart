import 'package:ewallet_apps/models/transfer_form_model.dart';
import 'package:ewallet_apps/services/transaction_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'transfer_event.dart';
part 'transfer_state.dart';

class TransferFormBloc extends Bloc<TransferFormEvent, TransferFormState> {
  TransferFormBloc() : super(TransferFormInitial()) {
    on<TransferFormEvent>((event, emit) async {
      if (event is TransferFormPost) {
        try {
          emit(TransferFormLoading());

          await TransactionService().transfer(event.data);

          emit(TransferFormSuccess());
        } catch (e) {
          print(e);

          emit(TransferFormFailed(e.toString()));
        }
      }
    });
  }
}
