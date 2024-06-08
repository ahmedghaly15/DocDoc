import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_specialization_response.freezed.dart';
part 'get_all_specialization_response.g.dart';

@freezed
class GetAllSpecializationResponse with _$GetAllSpecializationResponse {
  const factory GetAllSpecializationResponse({
    required int id,
    required String name,
    required List<Doctor> doctors,
  }) = _GetAllSpecializationResponse;

  factory GetAllSpecializationResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllSpecializationResponseFromJson(json);
}

@freezed
class Doctor with _$Doctor {
  const factory Doctor({
    required int id,
    required String name,
    required String email,
    required String phone,
    required String photo,
    required String address,
    required String description,
    required String degree,
    required Specialization specialization,
    required City city,
    @JsonKey(name: 'appoint_price') required String appointPrice,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
  }) = _Doctor;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}

@freezed
class Specialization with _$Specialization {
  const factory Specialization({
    required int id,
    required String name,
  }) = _Specialization;

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@freezed
class City with _$City {
  const factory City({
    required int id,
    required String name,
    required Governrate governrate,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@freezed
class Governrate with _$Governrate {
  const factory Governrate({
    required int id,
    required String name,
  }) = _Governrate;

  factory Governrate.fromJson(Map<String, dynamic> json) =>
      _$GovernrateFromJson(json);
}
