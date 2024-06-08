part of '../../../dependency_injection.dart';

void setupDIForRepos() {
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepoImpl(getIt.get<ApiService>()),
  );

  getIt.registerLazySingleton<RegisterRepo>(
    () => RegisterRepoImpl(getIt.get<ApiService>()),
  );

  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepo(getIt.get<ApiService>()),
  );
}
