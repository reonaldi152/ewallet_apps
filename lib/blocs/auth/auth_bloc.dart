import 'package:ewallet_apps/models/sign_in_form_model.dart';
import 'package:ewallet_apps/models/sign_up_form_model.dart';
import 'package:ewallet_apps/models/user_edit_form_model.dart';
import 'package:ewallet_apps/models/user_model.dart';
import 'package:ewallet_apps/services/auth_service.dart';
import 'package:ewallet_apps/services/wallet_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is AuthCheckEmail) {
        try {
          emit(AuthLoading());

          final res = await AuthService().checkEmail(event.email);
          if (res == false) {
            emit(AuthCheckEmailSuccess());
          } else {
            emit(const AuthFailed('email sudah dipakai'));
          }
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthRegister) {
        try {
          print('auth form register');

          emit(AuthLoading());

          print('habis emit authloading');

          final res = await AuthService().register(event.data);

          emit(AuthSuccess(res));
        } catch (e) {
          print("error event auth register");
          print(e.toString());
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthLogin) {
        try {
          print('auth login');

          emit(AuthLoading());

          final res = await AuthService().login(event.data);

          emit(AuthSuccess(res));
        } catch (e) {
          print(e.toString());
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthGetCurrent) {
        try {
          emit(AuthLoading());

          final SignInFormModel res =
              await AuthService().getCredentialFromLocal();

          final UserModel user = await AuthService().login(res);

          emit(AuthSuccess(user));
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthUpdateUser) {
        try {
          if (state is AuthSuccess) {
            final updatedUser = event.user.copyWith(
              name: event.data.name,
              username: event.data.username,
              email: event.data.email,
            );

            emit(AuthLoading());

            await AuthService().updateUser(event.data);

            emit(AuthSuccess(updatedUser));

            // final updatedUser = (state as AuthSuccess).user.copyWith(
            //   name: event.data.name,
            //   username: event.data.username,
            //   email: event.data.email,
            // );
          }
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthUpdatePin) {
        try {
          if (state is AuthSuccess) {
            final updatedUser = event.user.copyWith(
              pin: event.newPin,
            );

            emit(AuthLoading());

            await WalletService().updatePin(event.oldPin, event.newPin);

            emit(AuthSuccess(updatedUser));
          }
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthLogout) {
        try {
          emit(AuthLoading());

          await AuthService().logout();

          emit(AuthInitial());
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthUpdateBalance) {
        if (state is AuthSuccess) {
          final currentUser = (state as AuthSuccess).data;
          final updatedUser = currentUser.copyWith(
            balance: currentUser.balance! + event.amount,
          );

          emit(AuthSuccess(updatedUser));
        }
      }
    });
  }
}
