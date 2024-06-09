import 'package:docdoc/src/core/helpers/constants.dart';
import 'package:docdoc/src/core/helpers/extensions.dart';
import 'package:docdoc/src/core/helpers/shared_pref_helper.dart';

Future<void> checkIfUserLoggedIn() async {
  String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (userToken.isNullOrEmpty) {
    isUserLoggedIn = false;
  } else {
    isUserLoggedIn = true;
  }
}
