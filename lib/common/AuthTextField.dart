import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final bool isPasswordField;
  final bool isRequiredField;
  final String error;
  final EdgeInsets padding;

  const AuthTextField({
    Key key,
    this.hint = '',
    @required this.onChanged,
    @required this.keyboardType,
    this.isPasswordField = false,
    this.isRequiredField = false,
    this.error,
    this.padding = const EdgeInsets.all(0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UnderlineInputBorder border = UnderlineInputBorder(
        borderSide: new BorderSide(
            color: Colors.transparent,
            width: 2
        )
    );
    UnderlineInputBorder errorBorder = UnderlineInputBorder(
        borderSide: new BorderSide(
            color: Colors.transparent,
            width: 2
        )
    );
    return Padding(
      padding: padding,
      child: TextFormField(
        obscureText: isPasswordField,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(25.0),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: hint,
          fillColor: Colors.white70),
          onChanged: onChanged
        // validator: (value) =>
    //     state.isValidUsername ? null : 'username is too short',
      // TextFormField(
      //   keyboardType: keyboardType,
      //   decoration: InputDecoration(
      //     fillColor: Colors.white,
      //     contentPadding: EdgeInsets.symmetric(horizontal: 12),
      //     filled: true,
      //     hintText: isRequiredField ? '$hint*' : hint,
      //     border: border,
      //     disabledBorder: border,
      //     enabledBorder: border,
      //     errorBorder: errorBorder,
      //     focusedErrorBorder: errorBorder,
      //     // errorText: error,
      //     floatingLabelBehavior: FloatingLabelBehavior.never,
      //   ),
      //   autocorrect: false,
      //   textInputAction: TextInputAction.done,
      //   obscureText: isPasswordField,
      //   maxLines: 1,
      //   onChanged: onChanged,
      // ),
    ));
  }
}