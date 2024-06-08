import 'package:docdoc/src/core/api/api_result.dart';
import 'package:docdoc/src/core/api/api_service.dart';
import 'package:docdoc/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:docdoc/src/features/home/data/models/get_all_specialization_response.dart';

class HomeRepo {
  final ApiService _apiService;

  const HomeRepo(this._apiService);

  Future<ApiResult<GetAllSpecializationResponse>> getAllSpecialization() {
    return executeAndHandleErrors<GetAllSpecializationResponse>(
      () async => await _apiService.getAllSpecialization(),
    );
  }
}
