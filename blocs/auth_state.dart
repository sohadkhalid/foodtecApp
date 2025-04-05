import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {}

class AuthFailure extends AuthState {
  final String message;

  AuthFailure(this.message);

  @override
  List<Object> get props => [message];
}

class RememberMeChecked extends AuthState {
  final bool isChecked;
  RememberMeChecked({required this.isChecked});

  @override
  List<Object> get props => [isChecked];
}
