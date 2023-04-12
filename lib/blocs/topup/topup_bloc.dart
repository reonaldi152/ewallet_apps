import 'package:ewallet_apps/models/topup_form_model.dart';
import 'package:ewallet_apps/services/transaction_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'topup_event.dart';
part 'topup_state.dart';

class TopupFormBloc extends Bloc<TopupFormEvent, TopupFormState> {
  TopupFormBloc() : super(TopupFormInitial()) {
    on<TopupFormEvent>((event, emit) async {
      if (event is TopupFormPost) {
        try {
          emit(TopupFormLoading());

          final res = await TransactionService().topUp(event.data);

          emit(TopupFormSuccess(res));
        } catch (e) {
          print(e);
          emit(TopupFormFailed(e.toString()));
        }
      }
    });
  }
}
