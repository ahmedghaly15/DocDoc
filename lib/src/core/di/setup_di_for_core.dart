part of '../../../dependency_injection.dart';

void setupDIForCore() {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
}
