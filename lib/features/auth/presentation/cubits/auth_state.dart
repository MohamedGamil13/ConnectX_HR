part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthSucess extends AuthState {}

class AuthFaliure extends AuthState {
  final String errorMessage;

  AuthFaliure({required this.errorMessage});
}

class AuthLoading extends AuthState {}
