part of '../../../service_locator.dart';

class SetupLocatorForExternal {
  Future<void> setup() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  }
}
