import 'package:docdoc/src/config/router/routes.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:docdoc/src/core/utils/app_navigator.dart';
import 'package:docdoc/src/core/widgets/primary_button.dart';
import 'package:docdoc/src/features/onboarding/view/widgets/app_logo_and_name.dart';
import 'package:docdoc/src/features/onboarding/view/widgets/doctor_and_onboarding_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  void _setSystemUIOverlayStyle() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    final double bottomPadding = View.of(context).viewPadding.bottom;

    // Set the color based on the presence of the system navigation bar
    final Color systemNavigationBarColor =
        bottomPadding > 0 ? Colors.black : Colors.transparent;

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15.h, bottom: 30.h),
            child: Column(
              children: <Widget>[
                const AppLogoAndName(),
                SizedBox(height: 40.h),
                const DoctorAndOnboardingTitle(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: AppTextStyles.font14Regular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 32.h),
                      PrimaryButton(
                        onPressed: () =>
                            context.pushNamed(routeName: Routes.loginRoute),
                        text: 'Get Started',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
