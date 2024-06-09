import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.g.dart';
part 'register_response.freezed.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    String? message,
    @JsonKey(name: 'data') UserData? userData,
    bool? status,
    int? code,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    String? token,
    @JsonKey(name: 'username') String? userName,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
