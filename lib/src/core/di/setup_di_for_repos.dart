part of '../../../dependency_injection.dart';

void setupDIForRepos() {
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepoImpl(getIt.get<ApiService>()),
  );
}
