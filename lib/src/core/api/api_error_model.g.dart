// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorModelImpl _$$ApiErrorModelImplFromJson(Map<String, dynamic> json) =>
    _$ApiErrorModelImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ApiErrorModelImplToJson(_$ApiErrorModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
