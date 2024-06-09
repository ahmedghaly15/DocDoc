import 'package:dio/dio.dart';
import 'package:docdoc/src/core/api/api_service.dart';
import 'package:docdoc/src/core/api/dio_factory.dart';
import 'package:docdoc/src/features/auth/data/repos/login_repo.dart';
import 'package:docdoc/src/features/auth/data/repos/register_repo.dart';
import 'package:docdoc/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:docdoc/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:docdoc/src/features/home/data/repos/home_repo.dart';
import 'package:docdoc/src/features/home/presentation/cubits/home_cubit.dart';
import 'package:get_it/get_it.dart';

part 'src/core/di/setup_di_for_core.dart';
part 'src/core/di/setup_di_for_repos.dart';
part 'src/core/di/setup_di_for_cubits.dart';

final GetIt getIt = GetIt.instance;

void setupGetIt() {
  setupDIForCore();
  setupDIForRepos();
  setupDIForCubits();
}
