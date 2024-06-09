import 'package:docdoc/src/config/router/routes.dart';
import 'package:docdoc/src/core/helpers/shared_pref_helper.dart';
import 'package:docdoc/src/core/utils/app_navigator.dart';
import 'package:docdoc/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EntryView extends StatefulWidget {
  const EntryView({super.key});

  @override
  State<EntryView> createState() => _EntryViewState();
}

class _EntryViewState extends State<EntryView> {
  void _goNext() {
    bool? onboarding = SharedPrefHelper.getBool(AppStrings.cachedOnboarding);

    if (onboarding != null) {
      context.pushReplacementNamed(newRoute: Routes.loginRoute);
    } else {
      context.pushReplacementNamed(newRoute: Routes.onboardingRoute);
    }
  }

  @override
  void initState() {
    // To ensure that navigation calls are performed after the widget tree has been built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _goNext();
    });
    super.initState();
  }

  void _setSystemUIOverlayStyle() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
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
    return const SizedBox();
  }
}
