part of '../../../service_locator.dart';

class SetupLocatorForCore {
  void setup() {
    getIt.registerLazySingleton<CacheHelper>(
      () => CacheHelper(getIt.get<SharedPreferences>()),
    );
  }
}
