import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndPrivacyPolicyText extends StatelessWidget {
  const TermsAndPrivacyPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: "By logging, you agree to our ",
            style:
                AppTextStyles.font12Medium.copyWith(color: AppColors.darkGrey),
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: AppTextStyles.font12Medium
                .copyWith(color: AppColors.lightBlack),
          ),
          TextSpan(
            text: ' and ',
            style:
                AppTextStyles.font12Medium.copyWith(color: AppColors.darkGrey),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: AppTextStyles.font12Medium.copyWith(
              color: AppColors.lightBlack,
              height: 1.5.h,
            ),
          ),
        ],
      ),
    );
  }
}
