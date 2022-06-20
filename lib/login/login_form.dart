import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_cubit.dart';
import 'login_state.dart';
import 'package:formz/formz.dart';
import 'package:mpm_apps/auth_models/password.dart';
import 'package:mpm_apps/common/AuthTextField.dart';
import 'package:mpm_apps/auth_models/email.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  State<LoginForm> createState() => LoginFormState();
}

enum SingingCharacter { user, security }

class LoginFormState extends State<LoginForm> {
  SingingCharacter _character = SingingCharacter.user;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          print('submission failure');
        } else if (state.status.isSubmissionSuccess) {
          print('success');
          Navigator.of(context).pushNamed('/home');
        }
      },
      builder: (context, state) => Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(38.0, 0, 38.0, 8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _WelcomeText(),
                    _EmailInputField(),
                    _PasswordInputField(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Container(
                              // color: Color(0xFFCC1105),
                              child: ListTile(
                                title: Text(
                                  "user",
                                  style: TextStyle(fontSize: 10),
                                ),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.user,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                  activeColor: Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Container(
                              // color: Color(0xFFCC1105),
                              child: ListTile(
                                title: Text(
                                  "Security",
                                  style: TextStyle(fontSize: 10),
                                ),
                                leading: Radio(
                                  value: SingingCharacter.security,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                  activeColor: Colors.green,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    _LoginButton(),
                    _rememberPassword(context)
                  ],
                ),
              ),
            ),
          ),
          state.status.isSubmissionInProgress
              ? Positioned(
                  child: Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

Widget _rememberPassword(BuildContext context) {
  int val = -1;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        child: Text("lupa password ?"),
      ),
      SizedBox(
        child: TextButton(onPressed: () {}, child: Text("klik disini !")),
      )
    ],
  );
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "MPM",
            style: TextStyle(fontFamily: 'Verdana', fontSize: 80),
          ),
          Text("DISTRIBUTOR")
        ],
      ),
    );
  }
}

class _EmailInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AuthTextField(
          hint: 'Email',
          key: const Key('loginForm_emailInput_textField'),
          keyboardType: TextInputType.emailAddress,
          error: state.email.error.name,
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
        );
      },
    );
  }
}

class _PasswordInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return AuthTextField(
          padding: EdgeInsets.symmetric(vertical: 20),
          hint: 'Password',
          isPasswordField: true,
          key: const Key('loginForm_passwordInput_textField'),
          keyboardType: TextInputType.text,
          error: state.password.error.name,
          onChanged: (password) =>
              context.read<LoginCubit>().passwordChanged(password),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.black87,
      onSurface: Colors.amber.shade900,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    );

    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      onPrimary: Colors.amber.shade900,
                      onSurface: Colors.amber.shade900),
                  onPressed: state.status.isValidated
                      ? () => context.read<LoginCubit>().logInWithCredentials()
                      : null,
                  child: Text("Login"),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.fingerprint),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.account_box_outlined),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
