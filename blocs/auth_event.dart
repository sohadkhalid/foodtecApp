import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;
  final bool rememberMe;

  LoginEvent(this.email, this.password, this.rememberMe);

  @override
  List<Object> get props => [email, password, rememberMe];
}

class ToggleRememberMe extends AuthEvent {
  final bool isChecked;
  ToggleRememberMe({required this.isChecked});

  @override
  List<Object> get props => [isChecked];
}

class SignUpEvent extends AuthEvent {
  final String email;
  final String password;

  SignUpEvent(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}

class ResetPasswordEvent extends AuthEvent {
  final String email;

  ResetPasswordEvent(this.email);

  @override
  List<Object> get props => [email];
}

class VerifyCodeEvent extends AuthEvent {
  final String code;

  VerifyCodeEvent(this.code);
  @override
  List<Object> get props => [code];
}

class SetNewPasswordEvent extends AuthEvent {
  final String password;

  SetNewPasswordEvent(this.password);

  @override
  List<Object> get props => [password];
}
