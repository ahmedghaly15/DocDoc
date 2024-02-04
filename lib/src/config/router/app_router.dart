import 'package:docdoc/dependency_injection.dart';
import 'package:docdoc/src/config/router/routes.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:docdoc/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:docdoc/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:docdoc/src/features/auth/presentation/views/login_view.dart';
import 'package:docdoc/src/features/auth/presentation/views/register_view.dart';
import 'package:docdoc/src/features/entry/presentation/views/entry_view.dart';
import 'package:docdoc/src/features/home/presentation/views/home.dart';
import 'package:docdoc/src/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const EntryView());

      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());

      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt.get<LoginCubit>(),
            child: const LoginView(),
          ),
        );

      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt.get<RegisterCubit>(),
            child: const RegisterView(),
          ),
        );

      case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

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
