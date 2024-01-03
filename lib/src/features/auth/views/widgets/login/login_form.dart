import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:docdoc/src/core/helpers/auth_helper.dart';
import 'package:docdoc/src/core/widgets/custom_text_form_field.dart';
import 'package:docdoc/src/core/widgets/primary_button.dart';
import 'package:docdoc/src/features/auth/views/widgets/login/remember_me_checkbox.dart';
import 'package:docdoc/src/features/auth/views/widgets/text_field_separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  late final GlobalKey<FormState> _formKey;
  late AutovalidateMode autoValidateMode;

  @override
  void initState() {
    _initFormAttributes();
    super.initState();
  }

  void _initFormAttributes() {
    _formKey = GlobalKey<FormState>();
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
            keyboardType: TextInputType.visiblePassword,
            autofillHints: const <String>[AutofillHints.password],
            obscureText: true,
            validating: (String? val) =>
                AuthHelper.validatingPasswordField(value: val),
          ),
          const TextFieldSeparator(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const RememberMeCheckBox(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: AppTextStyles.font12Regular.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 32.h),
          PrimaryButton(
            onPressed: () {},
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
