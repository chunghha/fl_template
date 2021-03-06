// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_address.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAddressModel _$UserAddressModelFromJson(Map<String, dynamic> json) {
  return _UserAddressModel.fromJson(json);
}

/// @nodoc
mixin _$UserAddressModel {
  String? get street => throw _privateConstructorUsedError;
  String? get suite => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  UserGeoModel? get geo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddressModelCopyWith<UserAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressModelCopyWith<$Res> {
  factory $UserAddressModelCopyWith(
          UserAddressModel value, $Res Function(UserAddressModel) then) =
      _$UserAddressModelCopyWithImpl<$Res>;
  $Res call(
      {String? street,
      String? suite,
      String? city,
      String? zip,
      UserGeoModel? geo});

  $UserGeoModelCopyWith<$Res>? get geo;
}

/// @nodoc
class _$UserAddressModelCopyWithImpl<$Res>
    implements $UserAddressModelCopyWith<$Res> {
  _$UserAddressModelCopyWithImpl(this._value, this._then);

  final UserAddressModel _value;
  // ignore: unused_field
  final $Res Function(UserAddressModel) _then;

  @override
  $Res call({
    Object? street = freezed,
    Object? suite = freezed,
    Object? city = freezed,
    Object? zip = freezed,
    Object? geo = freezed,
  }) {
    return _then(_value.copyWith(
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      suite: suite == freezed
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as UserGeoModel?,
    ));
  }

  @override
  $UserGeoModelCopyWith<$Res>? get geo {
    if (_value.geo == null) {
      return null;
    }

    return $UserGeoModelCopyWith<$Res>(_value.geo!, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserAddressModelCopyWith<$Res>
    implements $UserAddressModelCopyWith<$Res> {
  factory _$$_UserAddressModelCopyWith(
          _$_UserAddressModel value, $Res Function(_$_UserAddressModel) then) =
      __$$_UserAddressModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? street,
      String? suite,
      String? city,
      String? zip,
      UserGeoModel? geo});

  @override
  $UserGeoModelCopyWith<$Res>? get geo;
}

/// @nodoc
class __$$_UserAddressModelCopyWithImpl<$Res>
    extends _$UserAddressModelCopyWithImpl<$Res>
    implements _$$_UserAddressModelCopyWith<$Res> {
  __$$_UserAddressModelCopyWithImpl(
      _$_UserAddressModel _value, $Res Function(_$_UserAddressModel) _then)
      : super(_value, (v) => _then(v as _$_UserAddressModel));

  @override
  _$_UserAddressModel get _value => super._value as _$_UserAddressModel;

  @override
  $Res call({
    Object? street = freezed,
    Object? suite = freezed,
    Object? city = freezed,
    Object? zip = freezed,
    Object? geo = freezed,
  }) {
    return _then(_$_UserAddressModel(
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      suite: suite == freezed
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as UserGeoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAddressModel implements _UserAddressModel {
  _$_UserAddressModel({this.street, this.suite, this.city, this.zip, this.geo});

  factory _$_UserAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserAddressModelFromJson(json);

  @override
  final String? street;
  @override
  final String? suite;
  @override
  final String? city;
  @override
  final String? zip;
  @override
  final UserGeoModel? geo;

  @override
  String toString() {
    return 'UserAddressModel(street: $street, suite: $suite, city: $city, zip: $zip, geo: $geo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAddressModel &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.suite, suite) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.zip, zip) &&
            const DeepCollectionEquality().equals(other.geo, geo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(suite),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(zip),
      const DeepCollectionEquality().hash(geo));

  @JsonKey(ignore: true)
  @override
  _$$_UserAddressModelCopyWith<_$_UserAddressModel> get copyWith =>
      __$$_UserAddressModelCopyWithImpl<_$_UserAddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAddressModelToJson(
      this,
    );
  }
}

abstract class _UserAddressModel implements UserAddressModel {
  factory _UserAddressModel(
      {final String? street,
      final String? suite,
      final String? city,
      final String? zip,
      final UserGeoModel? geo}) = _$_UserAddressModel;

  factory _UserAddressModel.fromJson(Map<String, dynamic> json) =
      _$_UserAddressModel.fromJson;

  @override
  String? get street;
  @override
  String? get suite;
  @override
  String? get city;
  @override
  String? get zip;
  @override
  UserGeoModel? get geo;
  @override
  @JsonKey(ignore: true)
  _$$_UserAddressModelCopyWith<_$_UserAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
