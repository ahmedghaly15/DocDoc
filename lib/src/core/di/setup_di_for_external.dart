part of '../../../dependency_injection.dart';

Future<void> setupDIForExternal() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}
