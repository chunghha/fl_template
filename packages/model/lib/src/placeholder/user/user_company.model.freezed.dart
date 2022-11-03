// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_company.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCompanyModel _$UserCompanyModelFromJson(Map<String, dynamic> json) {
  return _UserCompanyModel.fromJson(json);
}

/// @nodoc
mixin _$UserCompanyModel {
  String? get name => throw _privateConstructorUsedError;
  String? get catchPhrase => throw _privateConstructorUsedError;
  String? get bs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCompanyModelCopyWith<UserCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCompanyModelCopyWith<$Res> {
  factory $UserCompanyModelCopyWith(
          UserCompanyModel value, $Res Function(UserCompanyModel) then) =
      _$UserCompanyModelCopyWithImpl<$Res, UserCompanyModel>;
  @useResult
  $Res call({String? name, String? catchPhrase, String? bs});
}

/// @nodoc
class _$UserCompanyModelCopyWithImpl<$Res, $Val extends UserCompanyModel>
    implements $UserCompanyModelCopyWith<$Res> {
  _$UserCompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: freezed == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: freezed == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCompanyModelCopyWith<$Res>
    implements $UserCompanyModelCopyWith<$Res> {
  factory _$$_UserCompanyModelCopyWith(
          _$_UserCompanyModel value, $Res Function(_$_UserCompanyModel) then) =
      __$$_UserCompanyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? catchPhrase, String? bs});
}

/// @nodoc
class __$$_UserCompanyModelCopyWithImpl<$Res>
    extends _$UserCompanyModelCopyWithImpl<$Res, _$_UserCompanyModel>
    implements _$$_UserCompanyModelCopyWith<$Res> {
  __$$_UserCompanyModelCopyWithImpl(
      _$_UserCompanyModel _value, $Res Function(_$_UserCompanyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_$_UserCompanyModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: freezed == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: freezed == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCompanyModel implements _UserCompanyModel {
  _$_UserCompanyModel({this.name, this.catchPhrase, this.bs});

  factory _$_UserCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserCompanyModelFromJson(json);

  @override
  final String? name;
  @override
  final String? catchPhrase;
  @override
  final String? bs;

  @override
  String toString() {
    return 'UserCompanyModel(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCompanyModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.catchPhrase, catchPhrase) ||
                other.catchPhrase == catchPhrase) &&
            (identical(other.bs, bs) || other.bs == bs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, catchPhrase, bs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCompanyModelCopyWith<_$_UserCompanyModel> get copyWith =>
      __$$_UserCompanyModelCopyWithImpl<_$_UserCompanyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCompanyModelToJson(
      this,
    );
  }
}

abstract class _UserCompanyModel implements UserCompanyModel {
  factory _UserCompanyModel(
      {final String? name,
      final String? catchPhrase,
      final String? bs}) = _$_UserCompanyModel;

  factory _UserCompanyModel.fromJson(Map<String, dynamic> json) =
      _$_UserCompanyModel.fromJson;

  @override
  String? get name;
  @override
  String? get catchPhrase;
  @override
  String? get bs;
  @override
  @JsonKey(ignore: true)
  _$$_UserCompanyModelCopyWith<_$_UserCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
