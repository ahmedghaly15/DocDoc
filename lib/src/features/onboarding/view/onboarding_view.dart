import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:docdoc/src/core/widgets/primary_button.dart';
import 'package:docdoc/src/features/onboarding/view/widgets/app_logo_and_name.dart';
import 'package:docdoc/src/features/onboarding/view/widgets/doctor_and_onboarding_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Column(
              children: <Widget>[
                const AppLogoAndName(),
                SizedBox(height: 40.h),
                const DoctorAndOnboardingTitle(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: AppTextStyles.font14Regular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 32.h),
                      PrimaryButton(
                        onPressed: () {},
                        text: 'Get Started',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
