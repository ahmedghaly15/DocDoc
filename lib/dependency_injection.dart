import 'package:dio/dio.dart';
import 'package:docdoc/src/core/api/api_service.dart';
import 'package:docdoc/src/core/api/dio_factory.dart';
import 'package:docdoc/src/core/helpers/cache_helper.dart';
import 'package:docdoc/src/features/auth/data/repos/login_repo.dart';
import 'package:docdoc/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'src/core/di/setup_di_for_external.dart';
part 'src/core/di/setup_di_for_core.dart';
part 'src/core/di/setup_di_for_repos.dart';
part 'src/core/di/setup_di_for_cubits.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  await setupDIForExternal();

  setupDIForCore();

  setupDIForRepos();

  setupDIForCubits();
}
