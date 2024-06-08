import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_body.freezed.dart';

@freezed
class RegisterRequestBody with _$RegisterRequestBody {
  const factory RegisterRequestBody({
    required String name,
    required String email,
    required String password,
    required String phone,
    @JsonKey(name: 'password_confirmation')
    required String passwordConfirmation,
    required int gender,
  }) = _RegisterRequestBody;
}
