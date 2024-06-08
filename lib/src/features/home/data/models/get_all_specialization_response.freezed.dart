// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_specialization_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllSpecializationResponse _$GetAllSpecializationResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAllSpecializationResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAllSpecializationResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Doctor> get doctors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllSpecializationResponseCopyWith<GetAllSpecializationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllSpecializationResponseCopyWith<$Res> {
  factory $GetAllSpecializationResponseCopyWith(
          GetAllSpecializationResponse value,
          $Res Function(GetAllSpecializationResponse) then) =
      _$GetAllSpecializationResponseCopyWithImpl<$Res,
          GetAllSpecializationResponse>;
  @useResult
  $Res call({int id, String name, List<Doctor> doctors});
}

/// @nodoc
class _$GetAllSpecializationResponseCopyWithImpl<$Res,
        $Val extends GetAllSpecializationResponse>
    implements $GetAllSpecializationResponseCopyWith<$Res> {
  _$GetAllSpecializationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? doctors = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      doctors: null == doctors
          ? _value.doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllSpecializationResponseImplCopyWith<$Res>
    implements $GetAllSpecializationResponseCopyWith<$Res> {
  factory _$$GetAllSpecializationResponseImplCopyWith(
          _$GetAllSpecializationResponseImpl value,
          $Res Function(_$GetAllSpecializationResponseImpl) then) =
      __$$GetAllSpecializationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<Doctor> doctors});
}

/// @nodoc
class __$$GetAllSpecializationResponseImplCopyWithImpl<$Res>
    extends _$GetAllSpecializationResponseCopyWithImpl<$Res,
        _$GetAllSpecializationResponseImpl>
    implements _$$GetAllSpecializationResponseImplCopyWith<$Res> {
  __$$GetAllSpecializationResponseImplCopyWithImpl(
      _$GetAllSpecializationResponseImpl _value,
      $Res Function(_$GetAllSpecializationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? doctors = null,
  }) {
    return _then(_$GetAllSpecializationResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      doctors: null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllSpecializationResponseImpl
    implements _GetAllSpecializationResponse {
  const _$GetAllSpecializationResponseImpl(
      {required this.id,
      required this.name,
      required final List<Doctor> doctors})
      : _doctors = doctors;

  factory _$GetAllSpecializationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllSpecializationResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<Doctor> _doctors;
  @override
  List<Doctor> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  String toString() {
    return 'GetAllSpecializationResponse(id: $id, name: $name, doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllSpecializationResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_doctors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllSpecializationResponseImplCopyWith<
          _$GetAllSpecializationResponseImpl>
      get copyWith => __$$GetAllSpecializationResponseImplCopyWithImpl<
          _$GetAllSpecializationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllSpecializationResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAllSpecializationResponse
    implements GetAllSpecializationResponse {
  const factory _GetAllSpecializationResponse(
          {required final int id,
          required final String name,
          required final List<Doctor> doctors}) =
      _$GetAllSpecializationResponseImpl;

  factory _GetAllSpecializationResponse.fromJson(Map<String, dynamic> json) =
      _$GetAllSpecializationResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<Doctor> get doctors;
  @override
  @JsonKey(ignore: true)
  _$$GetAllSpecializationResponseImplCopyWith<
          _$GetAllSpecializationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return _Doctor.fromJson(json);
}

/// @nodoc
mixin _$Doctor {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get degree => throw _privateConstructorUsedError;
  Specialization get specialization => throw _privateConstructorUsedError;
  City get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'appoint_price')
  String get appointPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorCopyWith<Doctor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) then) =
      _$DoctorCopyWithImpl<$Res, Doctor>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String phone,
      String photo,
      String address,
      String description,
      String degree,
      Specialization specialization,
      City city,
      @JsonKey(name: 'appoint_price') String appointPrice,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime});

  $SpecializationCopyWith<$Res> get specialization;
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res, $Val extends Doctor>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? photo = null,
    Object? address = null,
    Object? description = null,
    Object? degree = null,
    Object? specialization = null,
    Object? city = null,
    Object? appointPrice = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      degree: null == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      specialization: null == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as Specialization,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      appointPrice: null == appointPrice
          ? _value.appointPrice
          : appointPrice // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpecializationCopyWith<$Res> get specialization {
    return $SpecializationCopyWith<$Res>(_value.specialization, (value) {
      return _then(_value.copyWith(specialization: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorImplCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$$DoctorImplCopyWith(
          _$DoctorImpl value, $Res Function(_$DoctorImpl) then) =
      __$$DoctorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String phone,
      String photo,
      String address,
      String description,
      String degree,
      Specialization specialization,
      City city,
      @JsonKey(name: 'appoint_price') String appointPrice,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime});

  @override
  $SpecializationCopyWith<$Res> get specialization;
  @override
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class __$$DoctorImplCopyWithImpl<$Res>
    extends _$DoctorCopyWithImpl<$Res, _$DoctorImpl>
    implements _$$DoctorImplCopyWith<$Res> {
  __$$DoctorImplCopyWithImpl(
      _$DoctorImpl _value, $Res Function(_$DoctorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? photo = null,
    Object? address = null,
    Object? description = null,
    Object? degree = null,
    Object? specialization = null,
    Object? city = null,
    Object? appointPrice = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$DoctorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      degree: null == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      specialization: null == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as Specialization,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      appointPrice: null == appointPrice
          ? _value.appointPrice
          : appointPrice // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorImpl implements _Doctor {
  const _$DoctorImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.photo,
      required this.address,
      required this.description,
      required this.degree,
      required this.specialization,
      required this.city,
      @JsonKey(name: 'appoint_price') required this.appointPrice,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime});

  factory _$DoctorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String photo;
  @override
  final String address;
  @override
  final String description;
  @override
  final String degree;
  @override
  final Specialization specialization;
  @override
  final City city;
  @override
  @JsonKey(name: 'appoint_price')
  final String appointPrice;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  @JsonKey(name: 'end_time')
  final String endTime;

  @override
  String toString() {
    return 'Doctor(id: $id, name: $name, email: $email, phone: $phone, photo: $photo, address: $address, description: $description, degree: $degree, specialization: $specialization, city: $city, appointPrice: $appointPrice, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.appointPrice, appointPrice) ||
                other.appointPrice == appointPrice) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      phone,
      photo,
      address,
      description,
      degree,
      specialization,
      city,
      appointPrice,
      startTime,
      endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      __$$DoctorImplCopyWithImpl<_$DoctorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorImplToJson(
      this,
    );
  }
}

abstract class _Doctor implements Doctor {
  const factory _Doctor(
      {required final int id,
      required final String name,
      required final String email,
      required final String phone,
      required final String photo,
      required final String address,
      required final String description,
      required final String degree,
      required final Specialization specialization,
      required final City city,
      @JsonKey(name: 'appoint_price') required final String appointPrice,
      @JsonKey(name: 'start_time') required final String startTime,
      @JsonKey(name: 'end_time') required final String endTime}) = _$DoctorImpl;

  factory _Doctor.fromJson(Map<String, dynamic> json) = _$DoctorImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get photo;
  @override
  String get address;
  @override
  String get description;
  @override
  String get degree;
  @override
  Specialization get specialization;
  @override
  City get city;
  @override
  @JsonKey(name: 'appoint_price')
  String get appointPrice;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  @JsonKey(name: 'end_time')
  String get endTime;
  @override
  @JsonKey(ignore: true)
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Specialization _$SpecializationFromJson(Map<String, dynamic> json) {
  return _Specialization.fromJson(json);
}

/// @nodoc
mixin _$Specialization {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecializationCopyWith<Specialization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationCopyWith<$Res> {
  factory $SpecializationCopyWith(
          Specialization value, $Res Function(Specialization) then) =
      _$SpecializationCopyWithImpl<$Res, Specialization>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$SpecializationCopyWithImpl<$Res, $Val extends Specialization>
    implements $SpecializationCopyWith<$Res> {
  _$SpecializationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecializationImplCopyWith<$Res>
    implements $SpecializationCopyWith<$Res> {
  factory _$$SpecializationImplCopyWith(_$SpecializationImpl value,
          $Res Function(_$SpecializationImpl) then) =
      __$$SpecializationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$SpecializationImplCopyWithImpl<$Res>
    extends _$SpecializationCopyWithImpl<$Res, _$SpecializationImpl>
    implements _$$SpecializationImplCopyWith<$Res> {
  __$$SpecializationImplCopyWithImpl(
      _$SpecializationImpl _value, $Res Function(_$SpecializationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SpecializationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecializationImpl implements _Specialization {
  const _$SpecializationImpl({required this.id, required this.name});

  factory _$SpecializationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecializationImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Specialization(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationImplCopyWith<_$SpecializationImpl> get copyWith =>
      __$$SpecializationImplCopyWithImpl<_$SpecializationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecializationImplToJson(
      this,
    );
  }
}

abstract class _Specialization implements Specialization {
  const factory _Specialization(
      {required final int id,
      required final String name}) = _$SpecializationImpl;

  factory _Specialization.fromJson(Map<String, dynamic> json) =
      _$SpecializationImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SpecializationImplCopyWith<_$SpecializationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Governrate get governrate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call({int id, String name, Governrate governrate});

  $GovernrateCopyWith<$Res> get governrate;
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? governrate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      governrate: null == governrate
          ? _value.governrate
          : governrate // ignore: cast_nullable_to_non_nullable
              as Governrate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GovernrateCopyWith<$Res> get governrate {
    return $GovernrateCopyWith<$Res>(_value.governrate, (value) {
      return _then(_value.copyWith(governrate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, Governrate governrate});

  @override
  $GovernrateCopyWith<$Res> get governrate;
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? governrate = null,
  }) {
    return _then(_$CityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      governrate: null == governrate
          ? _value.governrate
          : governrate // ignore: cast_nullable_to_non_nullable
              as Governrate,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  const _$CityImpl(
      {required this.id, required this.name, required this.governrate});

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final Governrate governrate;

  @override
  String toString() {
    return 'City(id: $id, name: $name, governrate: $governrate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.governrate, governrate) ||
                other.governrate == governrate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, governrate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
      {required final int id,
      required final String name,
      required final Governrate governrate}) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Governrate get governrate;
  @override
  @JsonKey(ignore: true)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Governrate _$GovernrateFromJson(Map<String, dynamic> json) {
  return _Governrate.fromJson(json);
}

/// @nodoc
mixin _$Governrate {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GovernrateCopyWith<Governrate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GovernrateCopyWith<$Res> {
  factory $GovernrateCopyWith(
          Governrate value, $Res Function(Governrate) then) =
      _$GovernrateCopyWithImpl<$Res, Governrate>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GovernrateCopyWithImpl<$Res, $Val extends Governrate>
    implements $GovernrateCopyWith<$Res> {
  _$GovernrateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GovernrateImplCopyWith<$Res>
    implements $GovernrateCopyWith<$Res> {
  factory _$$GovernrateImplCopyWith(
          _$GovernrateImpl value, $Res Function(_$GovernrateImpl) then) =
      __$$GovernrateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$GovernrateImplCopyWithImpl<$Res>
    extends _$GovernrateCopyWithImpl<$Res, _$GovernrateImpl>
    implements _$$GovernrateImplCopyWith<$Res> {
  __$$GovernrateImplCopyWithImpl(
      _$GovernrateImpl _value, $Res Function(_$GovernrateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GovernrateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GovernrateImpl implements _Governrate {
  const _$GovernrateImpl({required this.id, required this.name});

  factory _$GovernrateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GovernrateImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Governrate(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GovernrateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GovernrateImplCopyWith<_$GovernrateImpl> get copyWith =>
      __$$GovernrateImplCopyWithImpl<_$GovernrateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GovernrateImplToJson(
      this,
    );
  }
}

abstract class _Governrate implements Governrate {
  const factory _Governrate(
      {required final int id, required final String name}) = _$GovernrateImpl;

  factory _Governrate.fromJson(Map<String, dynamic> json) =
      _$GovernrateImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GovernrateImplCopyWith<_$GovernrateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
