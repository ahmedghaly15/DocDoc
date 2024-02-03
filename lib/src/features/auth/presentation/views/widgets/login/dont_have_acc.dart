import 'package:docdoc/src/config/router/routes.dart';
import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:docdoc/src/core/utils/app_navigator.dart';
import 'package:flutter/material.dart';

class DontHaveAcc extends StatelessWidget {
  const DontHaveAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don't have an account?",
          style: AppTextStyles.font12SemiBold.copyWith(
            color: AppColors.darkBlue,
          ),
        ),
        TextButton(
          onPressed: () => context.pushNamed(routeName: Routes.registerRoute),
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
