// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
abstract class _$$UserCompanyModelImplCopyWith<$Res>
    implements $UserCompanyModelCopyWith<$Res> {
  factory _$$UserCompanyModelImplCopyWith(_$UserCompanyModelImpl value,
          $Res Function(_$UserCompanyModelImpl) then) =
      __$$UserCompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? catchPhrase, String? bs});
}

/// @nodoc
class __$$UserCompanyModelImplCopyWithImpl<$Res>
    extends _$UserCompanyModelCopyWithImpl<$Res, _$UserCompanyModelImpl>
    implements _$$UserCompanyModelImplCopyWith<$Res> {
  __$$UserCompanyModelImplCopyWithImpl(_$UserCompanyModelImpl _value,
      $Res Function(_$UserCompanyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_$UserCompanyModelImpl(
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
class _$UserCompanyModelImpl implements _UserCompanyModel {
  _$UserCompanyModelImpl({this.name, this.catchPhrase, this.bs});

  factory _$UserCompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCompanyModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCompanyModelImpl &&
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
  _$$UserCompanyModelImplCopyWith<_$UserCompanyModelImpl> get copyWith =>
      __$$UserCompanyModelImplCopyWithImpl<_$UserCompanyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCompanyModelImplToJson(
      this,
    );
  }
}

abstract class _UserCompanyModel implements UserCompanyModel {
  factory _UserCompanyModel(
      {final String? name,
      final String? catchPhrase,
      final String? bs}) = _$UserCompanyModelImpl;

  factory _UserCompanyModel.fromJson(Map<String, dynamic> json) =
      _$UserCompanyModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get catchPhrase;
  @override
  String? get bs;
  @override
  @JsonKey(ignore: true)
  _$$UserCompanyModelImplCopyWith<_$UserCompanyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
