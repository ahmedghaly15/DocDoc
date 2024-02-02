part of '../../../dependency_injection.dart';

void setupDIForCore() {
  getIt.registerLazySingleton<CacheHelper>(
    () => CacheHelper(getIt.get<SharedPreferences>()),
  );

  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
}
