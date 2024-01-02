import 'package:docdoc/src/core/utils/app_assets.dart';
import 'package:docdoc/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SvgPicture.asset(AppAssets.svgsSplashLowOpacityLogo),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                AppAssets.svgsAppLogo,
                height: 72.h,
                width: 72.h,
              ),
              SizedBox(width: 10.w),
              Text(
                AppStrings.appTitle,
                style: TextStyle(
                  fontSize: 48.sp,
                  color: const Color(0xff242424),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
