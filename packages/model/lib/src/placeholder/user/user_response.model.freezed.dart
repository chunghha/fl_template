// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) {
  return _UserResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  UserAddressModel? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  UserCompanyModel? get compaany => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseModelCopyWith<UserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseModelCopyWith<$Res> {
  factory $UserResponseModelCopyWith(
          UserResponseModel value, $Res Function(UserResponseModel) then) =
      _$UserResponseModelCopyWithImpl<$Res, UserResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? username,
      String? email,
      UserAddressModel? address,
      String? phone,
      String? website,
      UserCompanyModel? compaany});

  $UserAddressModelCopyWith<$Res>? get address;
  $UserCompanyModelCopyWith<$Res>? get compaany;
}

/// @nodoc
class _$UserResponseModelCopyWithImpl<$Res, $Val extends UserResponseModel>
    implements $UserResponseModelCopyWith<$Res> {
  _$UserResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? compaany = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as UserAddressModel?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      compaany: freezed == compaany
          ? _value.compaany
          : compaany // ignore: cast_nullable_to_non_nullable
              as UserCompanyModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAddressModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $UserAddressModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCompanyModelCopyWith<$Res>? get compaany {
    if (_value.compaany == null) {
      return null;
    }

    return $UserCompanyModelCopyWith<$Res>(_value.compaany!, (value) {
      return _then(_value.copyWith(compaany: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResponseModelImplCopyWith<$Res>
    implements $UserResponseModelCopyWith<$Res> {
  factory _$$UserResponseModelImplCopyWith(_$UserResponseModelImpl value,
          $Res Function(_$UserResponseModelImpl) then) =
      __$$UserResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? username,
      String? email,
      UserAddressModel? address,
      String? phone,
      String? website,
      UserCompanyModel? compaany});

  @override
  $UserAddressModelCopyWith<$Res>? get address;
  @override
  $UserCompanyModelCopyWith<$Res>? get compaany;
}

/// @nodoc
class __$$UserResponseModelImplCopyWithImpl<$Res>
    extends _$UserResponseModelCopyWithImpl<$Res, _$UserResponseModelImpl>
    implements _$$UserResponseModelImplCopyWith<$Res> {
  __$$UserResponseModelImplCopyWithImpl(_$UserResponseModelImpl _value,
      $Res Function(_$UserResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? compaany = freezed,
  }) {
    return _then(_$UserResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as UserAddressModel?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      compaany: freezed == compaany
          ? _value.compaany
          : compaany // ignore: cast_nullable_to_non_nullable
              as UserCompanyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseModelImpl implements _UserResponseModel {
  _$UserResponseModelImpl(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.compaany});

  factory _$UserResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final UserAddressModel? address;
  @override
  final String? phone;
  @override
  final String? website;
  @override
  final UserCompanyModel? compaany;

  @override
  String toString() {
    return 'UserResponseModel(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, compaany: $compaany)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.compaany, compaany) ||
                other.compaany == compaany));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, username, email,
      address, phone, website, compaany);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseModelImplCopyWith<_$UserResponseModelImpl> get copyWith =>
      __$$UserResponseModelImplCopyWithImpl<_$UserResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserResponseModel implements UserResponseModel {
  factory _UserResponseModel(
      {final int? id,
      final String? name,
      final String? username,
      final String? email,
      final UserAddressModel? address,
      final String? phone,
      final String? website,
      final UserCompanyModel? compaany}) = _$UserResponseModelImpl;

  factory _UserResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserResponseModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get username;
  @override
  String? get email;
  @override
  UserAddressModel? get address;
  @override
  String? get phone;
  @override
  String? get website;
  @override
  UserCompanyModel? get compaany;
  @override
  @JsonKey(ignore: true)
  _$$UserResponseModelImplCopyWith<_$UserResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
