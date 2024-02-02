part of '../../../dependency_injection.dart';

void setupDIForCubits() {
  getIt.registerLazySingleton<LoginCubit>(
    () => LoginCubit(getIt.get<LoginRepo>()),
  );
}
