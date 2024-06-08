import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctor Speciality',
          style: AppTextStyles.font18SemiBoldDarkBlue,
        ),
        const Spacer(),
        TextButton(
          onPressed: (){},
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
