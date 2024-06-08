// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginRequestBody {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginRequestBodyCopyWith<LoginRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestBodyCopyWith<$Res> {
  factory $LoginRequestBodyCopyWith(
          LoginRequestBody value, $Res Function(LoginRequestBody) then) =
      _$LoginRequestBodyCopyWithImpl<$Res, LoginRequestBody>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginRequestBodyCopyWithImpl<$Res, $Val extends LoginRequestBody>
    implements $LoginRequestBodyCopyWith<$Res> {
  _$LoginRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginRequestBodyImplCopyWith<$Res>
    implements $LoginRequestBodyCopyWith<$Res> {
  factory _$$LoginRequestBodyImplCopyWith(_$LoginRequestBodyImpl value,
          $Res Function(_$LoginRequestBodyImpl) then) =
      __$$LoginRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginRequestBodyImplCopyWithImpl<$Res>
    extends _$LoginRequestBodyCopyWithImpl<$Res, _$LoginRequestBodyImpl>
    implements _$$LoginRequestBodyImplCopyWith<$Res> {
  __$$LoginRequestBodyImplCopyWithImpl(_$LoginRequestBodyImpl _value,
      $Res Function(_$LoginRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginRequestBodyImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginRequestBodyImpl implements _LoginRequestBody {
  const _$LoginRequestBodyImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginRequestBody(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestBodyImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestBodyImplCopyWith<_$LoginRequestBodyImpl> get copyWith =>
      __$$LoginRequestBodyImplCopyWithImpl<_$LoginRequestBodyImpl>(
          this, _$identity);
}

abstract class _LoginRequestBody implements LoginRequestBody {
  const factory _LoginRequestBody(
      {required final String email,
      required final String password}) = _$LoginRequestBodyImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginRequestBodyImplCopyWith<_$LoginRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
