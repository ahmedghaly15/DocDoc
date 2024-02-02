import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/core/helpers/auth_helper.dart';
import 'package:docdoc/src/core/widgets/custom_text_form_field.dart';
import 'package:docdoc/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/login/password_validations.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/text_field_separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  late final FocusNode _emailFocusNode;
  late final FocusNode _passwordFocusNode;

  late final GlobalKey<FormState> _formKey;
  late AutovalidateMode autoValidateMode;

  bool isObscureText = false;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    _initFormAttributes();
    super.initState();
  }

  void _initFormAttributes() {
    _formKey = context.read<LoginCubit>().formKey;
    _emailController = context.read<LoginCubit>().emailController;
    _passwordController = context.read<LoginCubit>().passwordController;
    _emailFocusNode = context.read<LoginCubit>().emailFocusNode;
    _passwordFocusNode = context.read<LoginCubit>().passwordFocusNode;
    autoValidateMode = AutovalidateMode.disabled;
  }

  @override
  void dispose() {
    _disposeControllers();
    _disposeFocusNodes();
    super.dispose();
  }

  void _disposeFocusNodes() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
  }

  void _disposeControllers() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: <Widget>[
          CustomTextFormField(
            controller: _emailController,
            focusNode: _emailFocusNode,
            hintText: 'Email',
            autofillHints: const <String>[AutofillHints.email],
            keyboardType: TextInputType.emailAddress,
            validating: (String? val) =>
                AuthHelper.validatingEmailField(value: val),
            onEditingComplete: () => AuthHelper.requestFocus(
              context,
              _passwordFocusNode,
            ),
          ),
          const TextFieldSeparator(),
          CustomTextFormField(
            hintText: 'Password',
            controller: _passwordController,
            focusNode: _passwordFocusNode,
            obscureText: isObscureText,
            keyboardType: TextInputType.visiblePassword,
            autofillHints: const <String>[AutofillHints.password],
            validating: (String? val) =>
                AuthHelper.validatingPasswordField(value: val),
            suffix: IconButton(
              icon: Icon(
                isObscureText ? Icons.visibility : Icons.visibility_off,
                color: AppColors.hintColor,
              ),
              onPressed: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
            ),
          ),
          const TextFieldSeparator(),
          PasswordValidations(
            hasLowercase: hasLowercase,
            hasUppercase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
