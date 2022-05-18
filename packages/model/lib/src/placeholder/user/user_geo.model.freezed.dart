// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_geo.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserGeoModel _$UserGeoModelFromJson(Map<String, dynamic> json) {
  return _UserGeoModel.fromJson(json);
}

/// @nodoc
mixin _$UserGeoModel {
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGeoModelCopyWith<UserGeoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGeoModelCopyWith<$Res> {
  factory $UserGeoModelCopyWith(
          UserGeoModel value, $Res Function(UserGeoModel) then) =
      _$UserGeoModelCopyWithImpl<$Res>;
  $Res call({String? lat, String? lng});
}

/// @nodoc
class _$UserGeoModelCopyWithImpl<$Res> implements $UserGeoModelCopyWith<$Res> {
  _$UserGeoModelCopyWithImpl(this._value, this._then);

  final UserGeoModel _value;
  // ignore: unused_field
  final $Res Function(UserGeoModel) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserGeoModelCopyWith<$Res>
    implements $UserGeoModelCopyWith<$Res> {
  factory _$$_UserGeoModelCopyWith(
          _$_UserGeoModel value, $Res Function(_$_UserGeoModel) then) =
      __$$_UserGeoModelCopyWithImpl<$Res>;
  @override
  $Res call({String? lat, String? lng});
}

/// @nodoc
class __$$_UserGeoModelCopyWithImpl<$Res>
    extends _$UserGeoModelCopyWithImpl<$Res>
    implements _$$_UserGeoModelCopyWith<$Res> {
  __$$_UserGeoModelCopyWithImpl(
      _$_UserGeoModel _value, $Res Function(_$_UserGeoModel) _then)
      : super(_value, (v) => _then(v as _$_UserGeoModel));

  @override
  _$_UserGeoModel get _value => super._value as _$_UserGeoModel;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_UserGeoModel(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGeoModel implements _UserGeoModel {
  _$_UserGeoModel({this.lat, this.lng});

  factory _$_UserGeoModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserGeoModelFromJson(json);

  @override
  final String? lat;
  @override
  final String? lng;

  @override
  String toString() {
    return 'UserGeoModel(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserGeoModel &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$$_UserGeoModelCopyWith<_$_UserGeoModel> get copyWith =>
      __$$_UserGeoModelCopyWithImpl<_$_UserGeoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserGeoModelToJson(this);
  }
}

abstract class _UserGeoModel implements UserGeoModel {
  factory _UserGeoModel({final String? lat, final String? lng}) =
      _$_UserGeoModel;

  factory _UserGeoModel.fromJson(Map<String, dynamic> json) =
      _$_UserGeoModel.fromJson;

  @override
  String? get lat => throw _privateConstructorUsedError;
  @override
  String? get lng => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserGeoModelCopyWith<_$_UserGeoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
