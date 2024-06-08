// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterRequestBody {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirmation => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterRequestBodyCopyWith<RegisterRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestBodyCopyWith<$Res> {
  factory $RegisterRequestBodyCopyWith(
          RegisterRequestBody value, $Res Function(RegisterRequestBody) then) =
      _$RegisterRequestBodyCopyWithImpl<$Res, RegisterRequestBody>;
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      String phone,
      @JsonKey(name: 'password_confirmation') String passwordConfirmation,
      int gender});
}

/// @nodoc
class _$RegisterRequestBodyCopyWithImpl<$Res, $Val extends RegisterRequestBody>
    implements $RegisterRequestBodyCopyWith<$Res> {
  _$RegisterRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? phone = null,
    Object? passwordConfirmation = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterRequestBodyImplCopyWith<$Res>
    implements $RegisterRequestBodyCopyWith<$Res> {
  factory _$$RegisterRequestBodyImplCopyWith(_$RegisterRequestBodyImpl value,
          $Res Function(_$RegisterRequestBodyImpl) then) =
      __$$RegisterRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      String phone,
      @JsonKey(name: 'password_confirmation') String passwordConfirmation,
      int gender});
}

/// @nodoc
class __$$RegisterRequestBodyImplCopyWithImpl<$Res>
    extends _$RegisterRequestBodyCopyWithImpl<$Res, _$RegisterRequestBodyImpl>
    implements _$$RegisterRequestBodyImplCopyWith<$Res> {
  __$$RegisterRequestBodyImplCopyWithImpl(_$RegisterRequestBodyImpl _value,
      $Res Function(_$RegisterRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? phone = null,
    Object? passwordConfirmation = null,
    Object? gender = null,
  }) {
    return _then(_$RegisterRequestBodyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RegisterRequestBodyImpl implements _RegisterRequestBody {
  const _$RegisterRequestBodyImpl(
      {required this.name,
      required this.email,
      required this.password,
      required this.phone,
      @JsonKey(name: 'password_confirmation')
      required this.passwordConfirmation,
      required this.gender});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String phone;
  @override
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  @override
  final int gender;

  @override
  String toString() {
    return 'RegisterRequestBody(name: $name, email: $email, password: $password, phone: $phone, passwordConfirmation: $passwordConfirmation, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterRequestBodyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, email, password, phone, passwordConfirmation, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterRequestBodyImplCopyWith<_$RegisterRequestBodyImpl> get copyWith =>
      __$$RegisterRequestBodyImplCopyWithImpl<_$RegisterRequestBodyImpl>(
          this, _$identity);
}

abstract class _RegisterRequestBody implements RegisterRequestBody {
  const factory _RegisterRequestBody(
      {required final String name,
      required final String email,
      required final String password,
      required final String phone,
      @JsonKey(name: 'password_confirmation')
      required final String passwordConfirmation,
      required final int gender}) = _$RegisterRequestBodyImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String get phone;
  @override
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirmation;
  @override
  int get gender;
  @override
  @JsonKey(ignore: true)
  _$$RegisterRequestBodyImplCopyWith<_$RegisterRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
