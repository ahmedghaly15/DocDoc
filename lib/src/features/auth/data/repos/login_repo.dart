import 'package:docdoc/src/core/api/api_result.dart';
import 'package:docdoc/src/core/api/api_service.dart';
import 'package:docdoc/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:docdoc/src/features/auth/data/models/login/login_request_body.dart';
import 'package:docdoc/src/features/auth/data/models/login/login_response.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody);
}

class LoginRepoImpl implements LoginRepo {
  final ApiService _apiService;

  const LoginRepoImpl(this._apiService);

  @override
  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) {
    return executeAndHandleErrors<LoginResponse>(
      () async => await _apiService.login(loginRequestBody),
    );
  }
}
