import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAuthLoading {
  static void show(BuildContext context) {
    showAdaptiveDialog(
      context: context,
      builder: (context) => const LoadingWidget(),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80.h,
        width: 80.h,
        padding: EdgeInsets.all(16.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
        ),
        child: CircularProgressIndicator(
          color: AppColors.primaryColor,
          strokeWidth: 5.w,
        ),
      ),
    );
  }
}
