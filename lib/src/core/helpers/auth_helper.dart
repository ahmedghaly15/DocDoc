import 'package:docdoc/src/core/helpers/app_regex.dart';
import 'package:flutter/material.dart';

class AuthHelper {
  static String? validatingEmailField({String? value}) {
    if (value == null || value.isEmpty) {
      return "Email can't be blank!";
    } else if (!AppRegex.isEmailValid(value)) {
      return "Please enter a valid email";
    }
    return null;
  }

  static String? validatingPasswordField({String? value}) {
    if (value == null || value.isEmpty) {
      return "Password can't be blank!";
    } else if (!AppRegex.isPasswordValid(value)) {
      return "Please enter a valid password";
    }
    return null;
  }

  static void keyboardUnfocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static void requestFocus(BuildContext context, FocusNode focusNode) =>
      FocusScope.of(context).requestFocus(focusNode);
}
