import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RememberMeCheckBox extends StatefulWidget {
  const RememberMeCheckBox({super.key});

  @override
  State<RememberMeCheckBox> createState() => _RememberMeCheckBoxState();
}

class _RememberMeCheckBoxState extends State<RememberMeCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Transform.scale(
          scale: 1.2.w,
          child: Checkbox(
            value: isChecked,
            activeColor: AppColors.primaryColor,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0.r),
            ),
            side: BorderSide(
              color: AppColors.secondaryGrey,
              width: 2.w,
            ),
          ),
        ),
        Text(
          'Remember me',
          style: AppTextStyles.font12Regular.copyWith(
            color: AppColors.secondaryGrey,
          ),
        ),
      ],
    );
  }
}
