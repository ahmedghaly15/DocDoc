import 'package:docdoc/src/config/router/routes.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:docdoc/src/features/auth/presentation/views/login_view.dart';
import 'package:docdoc/src/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case Routes.initialRoute:
      //   return MaterialPageRoute(builder: (_) => const SplashView());

      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());

      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());

      default:
        return unFoundRoute();
    }
  }

  static Route<dynamic> unFoundRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Text(
            "Un Found Route",
            style: AppTextStyles.font32Bold,
          ),
        ),
      ),
    );
  }
}
