import 'package:docdoc/src/features/auth/presentation/views/widgets/auth_subtitle.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/auth_title.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/login/dont_have_acc.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/login/login_bloc_listener.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/login/login_form.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/terms_and_privacy_policy_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
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
                    const LoginBlocListener(),
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
                      SizedBox(height: 24.h),
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
}
