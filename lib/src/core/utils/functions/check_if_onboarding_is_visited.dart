import 'package:docdoc/src/core/helpers/constants.dart';
import 'package:docdoc/src/core/helpers/shared_pref_helper.dart';

Future<void> checkIfOnboardingIsVisited() async {
  bool? onboarding = await SharedPrefHelper.getBool(SharedPrefKeys.onboarding);
  if (onboarding != null) {
    isOnboardingVisited = onboarding;
  } else {
    isOnboardingVisited = false;
  }
}
