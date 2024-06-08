// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_specialization_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllSpecializationResponseImpl _$$GetAllSpecializationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllSpecializationResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      doctors: (json['doctors'] as List<dynamic>)
          .map((e) => Doctor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllSpecializationResponseImplToJson(
        _$GetAllSpecializationResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctors,
    };

_$DoctorImpl _$$DoctorImplFromJson(Map<String, dynamic> json) => _$DoctorImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      photo: json['photo'] as String,
      address: json['address'] as String,
      description: json['description'] as String,
      degree: json['degree'] as String,
      specialization: Specialization.fromJson(
          json['specialization'] as Map<String, dynamic>),
      city: City.fromJson(json['city'] as Map<String, dynamic>),
      appointPrice: json['appoint_price'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
    );

Map<String, dynamic> _$$DoctorImplToJson(_$DoctorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'address': instance.address,
      'description': instance.description,
      'degree': instance.degree,
      'specialization': instance.specialization,
      'city': instance.city,
      'appoint_price': instance.appointPrice,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };

_$SpecializationImpl _$$SpecializationImplFromJson(Map<String, dynamic> json) =>
    _$SpecializationImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SpecializationImplToJson(
        _$SpecializationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      governrate:
          Governrate.fromJson(json['governrate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'governrate': instance.governrate,
    };

_$GovernrateImpl _$$GovernrateImplFromJson(Map<String, dynamic> json) =>
    _$GovernrateImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GovernrateImplToJson(_$GovernrateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
