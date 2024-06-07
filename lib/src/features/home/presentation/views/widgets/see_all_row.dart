import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class SeeAllRow extends StatelessWidget {
  const SeeAllRow({
    super.key,
    required this.text,
    this.seeAllOnPressed,
  });

  final String text;
  final VoidCallback? seeAllOnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppTextStyles.font18SemiBoldDarkBlue,
        ),
        const Spacer(),
        TextButton(
          onPressed: seeAllOnPressed,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primaryColor,
            textStyle: AppTextStyles.font12Regular,
          ),
          child: const Text('See All'),
        ),
      ],
    );
  }
}
