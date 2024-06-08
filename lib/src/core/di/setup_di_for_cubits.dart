part of '../../../dependency_injection.dart';

void setupDIForCubits() {
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt.get<LoginRepo>()),
  );

  getIt.registerFactory<RegisterCubit>(
    () => RegisterCubit(getIt.get<RegisterRepo>()),
  );

  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(getIt.get<HomeRepo>()),
  );
}
