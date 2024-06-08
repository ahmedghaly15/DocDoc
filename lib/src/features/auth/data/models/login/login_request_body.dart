import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_body.freezed.dart';

@freezed
class LoginRequestBody with _$LoginRequestBody {
  const factory LoginRequestBody({
    required String email,
    required String password,
  }) = _LoginRequestBody;
}
