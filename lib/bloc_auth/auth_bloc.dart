import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SignInButtonClicked>(_onSignInClicked);

    on<SignOutButtonClicked>(_onSignOutClicked);
  }

  void _onSignInClicked(
      SignInButtonClicked event, Emitter<AuthState> emit) async {
    emit(AuthLoading());

    try {
      final email = event.email;
      final password = event.password;

      if (email.isEmpty) {
        return emit(AuthFailure('Email cannot be empty.'));
      }

      if (password.length < 6) {
        return emit(
            AuthFailure('Password must be at least 6 characters long.'));
      }

      await Future.delayed(const Duration(seconds: 1));
      emit(AuthSuccess(uid: '1234567890'));
    } catch (e) {
      return emit(AuthFailure(e.toString()));
    }
  }

  void _onSignOutClicked(
    SignOutButtonClicked event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      await Future.delayed(const Duration(seconds: 1));
      return emit(AuthInitial());
    } on Exception catch (e) {
      return emit(AuthFailure(e.toString()));
    }
  }

  // Some other methods
  @override
  void onChange(Change<AuthState> change) {
    // state only
    super.onChange(change);
  }

  @override
  void onTransition(Transition<AuthEvent, AuthState> transition) {
    // State + Event
    super.onTransition(transition);
  }
}
