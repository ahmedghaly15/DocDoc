import 'package:dio/dio.dart';
import 'package:docdoc/src/core/api/end_points.dart';
import 'package:docdoc/src/features/auth/data/models/login/login_request_body.dart';
import 'package:docdoc/src/features/auth/data/models/login/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.authUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(EndPoints.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
