import 'package:docdoc/src/features/auth/presentation/views/widgets/auth_subtitle.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/auth_title.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/register/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                    const AuthTitle(title: 'Create Account'),
                    const AuthSubTitle(
                      subTitle:
                          "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                    ),
                    SizedBox(height: 36.h),
                    const RegisterForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
