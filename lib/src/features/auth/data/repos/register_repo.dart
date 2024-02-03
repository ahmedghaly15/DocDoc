import 'package:docdoc/src/core/api/api_error_handler.dart';
import 'package:docdoc/src/core/api/api_result.dart';
import 'package:docdoc/src/core/api/api_service.dart';
import 'package:docdoc/src/features/auth/data/models/register/register_request_body.dart';
import 'package:docdoc/src/features/auth/data/models/register/register_response.dart';

abstract class RegisterRepo {
  Future<ApiResult<RegisterResponse>> register(
    RegisterRequestBody registerRequestBody,
  );
}

class RegisterRepoImpl implements RegisterRepo {
  final ApiService _apiService;

  const RegisterRepoImpl(this._apiService);

  @override
  Future<ApiResult<RegisterResponse>> register(
    RegisterRequestBody registerRequestBody,
  ) async {
    try {
      final response = await _apiService.register(registerRequestBody);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
