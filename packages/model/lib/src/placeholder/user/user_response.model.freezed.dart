// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_response.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) {
  return _UserResponseModel.fromJson(json);
}

/// @nodoc
class _$UserResponseModelTearOff {
  const _$UserResponseModelTearOff();

  _UserResponseModel call(
      {int? id,
      String? name,
      String? username,
      String? email,
      UserAddressModel? address,
      String? phone,
      String? website,
      UserCompanyModel? compaany}) {
    return _UserResponseModel(
      id: id,
      name: name,
      username: username,
      email: email,
      address: address,
      phone: phone,
      website: website,
      compaany: compaany,
    );
  }

  UserResponseModel fromJson(Map<String, Object?> json) {
    return UserResponseModel.fromJson(json);
  }
}

/// @nodoc
const $UserResponseModel = _$UserResponseModelTearOff();

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
      _$UserResponseModelCopyWithImpl<$Res>;
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
class _$UserResponseModelCopyWithImpl<$Res>
    implements $UserResponseModelCopyWith<$Res> {
  _$UserResponseModelCopyWithImpl(this._value, this._then);

  final UserResponseModel _value;
  // ignore: unused_field
  final $Res Function(UserResponseModel) _then;

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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as UserAddressModel?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      compaany: compaany == freezed
          ? _value.compaany
          : compaany // ignore: cast_nullable_to_non_nullable
              as UserCompanyModel?,
    ));
  }

  @override
  $UserAddressModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $UserAddressModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $UserCompanyModelCopyWith<$Res>? get compaany {
    if (_value.compaany == null) {
      return null;
    }

    return $UserCompanyModelCopyWith<$Res>(_value.compaany!, (value) {
      return _then(_value.copyWith(compaany: value));
    });
  }
}

/// @nodoc
abstract class _$UserResponseModelCopyWith<$Res>
    implements $UserResponseModelCopyWith<$Res> {
  factory _$UserResponseModelCopyWith(
          _UserResponseModel value, $Res Function(_UserResponseModel) then) =
      __$UserResponseModelCopyWithImpl<$Res>;
  @override
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
class __$UserResponseModelCopyWithImpl<$Res>
    extends _$UserResponseModelCopyWithImpl<$Res>
    implements _$UserResponseModelCopyWith<$Res> {
  __$UserResponseModelCopyWithImpl(
      _UserResponseModel _value, $Res Function(_UserResponseModel) _then)
      : super(_value, (v) => _then(v as _UserResponseModel));

  @override
  _UserResponseModel get _value => super._value as _UserResponseModel;

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
    return _then(_UserResponseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as UserAddressModel?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      compaany: compaany == freezed
          ? _value.compaany
          : compaany // ignore: cast_nullable_to_non_nullable
              as UserCompanyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponseModel implements _UserResponseModel {
  _$_UserResponseModel(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.compaany});

  factory _$_UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserResponseModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.compaany, compaany));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(compaany));

  @JsonKey(ignore: true)
  @override
  _$UserResponseModelCopyWith<_UserResponseModel> get copyWith =>
      __$UserResponseModelCopyWithImpl<_UserResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseModelToJson(this);
  }
}

abstract class _UserResponseModel implements UserResponseModel {
  factory _UserResponseModel(
      {int? id,
      String? name,
      String? username,
      String? email,
      UserAddressModel? address,
      String? phone,
      String? website,
      UserCompanyModel? compaany}) = _$_UserResponseModel;

  factory _UserResponseModel.fromJson(Map<String, dynamic> json) =
      _$_UserResponseModel.fromJson;

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
  _$UserResponseModelCopyWith<_UserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
