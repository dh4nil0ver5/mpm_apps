import 'dart:convert';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mpm_apps/auth_models/email.dart';
import 'package:mpm_apps/auth_models/password.dart';
import 'package:formz/formz.dart';
import 'package:http/http.dart' as http;
import 'package:mpm_apps/common/ApiContants.dart';
import '../login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      status: Formz.validate([email, state.password]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
      password: password,
      status: Formz.validate([state.email, password]),
    ));
  }

  Future<void> getData() async {
    print("object");
  }
  // = ApiService().getUsers();

  Future<void> logInWithCredentials() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await Future.delayed(Duration(milliseconds: 500));
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on Exception catch (e) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure, error: e.toString()));
    }
  }
}
