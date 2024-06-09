part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class SignInButtonClicked extends AuthEvent {
  final String email;
  final String password;

  SignInButtonClicked({
    required this.email,
    required this.password,
  });
}

final class SignOutButtonClicked extends AuthEvent {}
