import 'package:docdoc/src/core/helpers/auth_helper.dart';
import 'package:docdoc/src/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    required this.emailController,
    required this.emailFocusNode,
    required this.passwordFocusNode,
  });

  final TextEditingController emailController;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      focusNode: emailFocusNode,
      hintText: 'Email',
      autofillHints: const <String>[AutofillHints.email],
      keyboardType: TextInputType.emailAddress,
      validating: (String? val) => AuthHelper.validatingEmailField(value: val),
      onEditingComplete: () => AuthHelper.requestFocus(
        context,
        passwordFocusNode,
      ),
    );
  }
}
