import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  bool rememberMe = false;
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>(_onLogin);
    on<SignUpEvent>(_onSignUp);

    on<ResetPasswordEvent>(_onResetPassword);
    on<VerifyCodeEvent>(_onVerifyCode);
    on<SetNewPasswordEvent>(_onSetNewPassword);
  }

  void _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await Future.delayed(Duration(seconds: 2));

    if (!_isValidEmail(event.email)) {
      emit(AuthFailure("Invalid email format"));
      return;
    }

    if (event.email == "test@foodtek.com" && event.password == "Test@1234") {
      emit(AuthSuccess());
    } else {
      emit(AuthFailure("Incorrect email or password"));
    }
    on<ToggleRememberMe>((event, emit) {
      rememberMe = event.isChecked;
      emit(RememberMeChecked(isChecked: rememberMe));
    });
  }

  void _onSignUp(SignUpEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await Future.delayed(Duration(seconds: 2));

    if (!_isValidEmail(event.email)) {
      emit(AuthFailure("Invalid email format"));
      return;
    }

    if (!_isValidPassword(event.password)) {
      emit(AuthFailure(
          "Password must have at least:\n- 1 Uppercase\n- 1 Lowercase\n- 1 Number\n- 1 Special Character"));
      return;
    }

    emit(AuthSuccess());
  }

  void _onResetPassword(
      ResetPasswordEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await Future.delayed(Duration(seconds: 2));

    if (!_isValidEmail(event.email)) {
      emit(AuthFailure("Invalid email format"));
      return;
    }

    emit(AuthSuccess());
  }

  void _onVerifyCode(VerifyCodeEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await Future.delayed(Duration(seconds: 2));

    if (event.code == "123456") {
      emit(AuthSuccess());
    } else {
      emit(AuthFailure("Invalid verification code"));
    }
  }

  void _onSetNewPassword(
      SetNewPasswordEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await Future.delayed(Duration(seconds: 2));

    if (!_isValidPassword(event.password)) {
      emit(AuthFailure(
          "Password must have at least:\n- 1 Uppercase\n- 1 Lowercase\n- 1 Number\n- 1 Special Character"));
      return;
    }

    emit(AuthSuccess());
  }

  bool _isValidEmail(String email) {
    return RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(email);
  }

  bool _isValidPassword(String password) {
    return password.length >= 8 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[a-z]')) &&
        password.contains(RegExp(r'[0-9]')) &&
        password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  }
}
