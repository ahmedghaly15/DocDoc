import 'dart:async';

import 'package:docdoc/src/config/router/routes.dart';
import 'package:docdoc/src/core/utils/app_assets.dart';
import 'package:docdoc/src/core/utils/app_navigator.dart';
import 'package:docdoc/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  void _startDelay() {
    _timer = Timer(const Duration(milliseconds: 2500), () => _goToNext());
  }

  void _goToNext() {
    // TODO: handle cacheHelper logic

    context.pushReplacementNamed(newRoute: Routes.onboardingRoute);
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _setSystemUIOverlayStyle() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    final double bottomPadding = View.of(context).viewPadding.bottom;

    // Set the color based on the presence of the system navigation bar
    final Color? systemNavigationBarColor =
        bottomPadding > 0 ? null : Colors.transparent;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: systemNavigationBarColor,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  void didChangeDependencies() {
    _setSystemUIOverlayStyle();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
      ),
    );
  }
}
