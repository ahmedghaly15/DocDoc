import 'package:docdoc/src/core/widgets/primary_button.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/auth_subtitle.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/auth_title.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/login/dont_have_acc.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/login/login_form.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/login/remember_me_checkbox.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/login/terms_and_privacy_policy_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const AuthTitle(title: 'Welcome Back'),
                    const AuthSubTitle(
                      subTitle:
                          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    ),
                    SizedBox(height: 36.h),
                    const LoginForm(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const RememberMeCheckBox(),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Forgot Password?'),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    PrimaryButton(
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                      text: 'Login',
                    ),
                    SizedBox(height: 45.h),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.h),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      const TermsAndPrivacyPolicyText(),
                      SizedBox(height: 24.h),
                      const DontHaveAcc(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {}
}
