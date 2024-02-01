import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: Colors.white,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: const MaterialStatePropertyAll(
              AppColors.primary,
            ),
            padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 8.h,
              ),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: const MaterialStatePropertyAll(Size.zero),
          ),
        ),
      );
}
