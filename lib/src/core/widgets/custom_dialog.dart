import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:docdoc/src/core/utils/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum CustomDialogStates { warning, success, error }

class CustomDialog {
  static void show({
    required BuildContext context,
    required CustomDialogStates state,
    required String message,
    VoidCallback? onAction,
    String actionText = 'Done',
  }) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, _, __) => const SizedBox(),
      transitionDuration: const Duration(milliseconds: 200),
      transitionBuilder: (context, animation1, animation2, widget) {
        return Material(
          type: MaterialType.transparency,
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.5, end: 1.0).animate(animation1),
            child: FadeTransition(
              opacity: Tween<double>(begin: 0.5, end: 1.0).animate(animation1),
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(
                    right: 16.w,
                    left: 16.w,
                    top: 24.h,
                    bottom: 8.h,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 24.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(24.r)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        _chooseSnackBarTitle(state),
                        style: AppTextStyles.font18Bold,
                      ),
                      SizedBox(height: 8.h),
                      Flexible(
                        child: Text(
                          message,
                          style: AppTextStyles.font14Regular.copyWith(
                            color: AppColors.darkBlue,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: onAction ?? () => context.pop(),
                          child: Text(
                            actionText,
                            style: AppTextStyles.font16SemiBold.copyWith(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  static String _chooseSnackBarTitle(
    CustomDialogStates state,
  ) {
    String title;

    switch (state) {
      case CustomDialogStates.error:
        title = 'Opps!';
        break;
      case CustomDialogStates.warning:
        title = 'Warning';
        break;

      case CustomDialogStates.success:
        title = 'Success!';
        break;
    }

    return title;
  }
}
