import 'package:json_annotation/json_annotation.dart';

part 'get_all_specialization_response.g.dart';

@JsonSerializable()
class GetAllSpecializationResponse {
  final String message;
  final List<GetAllSpecializationData> data;

  const GetAllSpecializationResponse({
    required this.message,
    required this.data,
  });

  factory GetAllSpecializationResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllSpecializationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetAllSpecializationResponseToJson(this);
}

@JsonSerializable()
class GetAllSpecializationData {
  final int id;
  final String name;
  final List<Doctor> doctors;

  const GetAllSpecializationData({
    required this.id,
    required this.name,
    required this.doctors,
  });

  factory GetAllSpecializationData.fromJson(Map<String, dynamic> json) =>
      _$GetAllSpecializationDataFromJson(json);
  Map<String, dynamic> toJson() => _$GetAllSpecializationDataToJson(this);
}

@JsonSerializable()
class Doctor {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String photo;
  final String address;
  final String description;
  final String degree;
  final Specialization specialization;
  final City city;
  @JsonKey(name: 'appoint_price')
  final int appointPrice;
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;

  const Doctor({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.photo,
    required this.address,
    required this.description,
    required this.degree,
    required this.specialization,
    required this.city,
    required this.appointPrice,
    required this.startTime,
    required this.endTime,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorToJson(this);
}

@JsonSerializable()
class Specialization {
  final int id;
  final String name;

  const Specialization({
    required this.id,
    required this.name,
  });

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
  Map<String, dynamic> toJson() => _$SpecializationToJson(this);
}

@JsonSerializable()
class City {
  final int id;
  final String name;
  final Governrate governrate;

  const City({
    required this.id,
    required this.name,
    required this.governrate,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class Governrate {
  final int id;
  final String name;

  const Governrate({required this.id, required this.name});

  factory Governrate.fromJson(Map<String, dynamic> json) =>
      _$GovernrateFromJson(json);
  Map<String, dynamic> toJson() => _$GovernrateToJson(this);
}
