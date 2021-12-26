// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponseModel _$$_UserResponseModelFromJson(Map<String, dynamic> json) =>
    _$_UserResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      address: json['address'] == null
          ? null
          : UserAddressModel.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      website: json['website'] as String?,
      compaany: json['compaany'] == null
          ? null
          : UserCompanyModel.fromJson(json['compaany'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserResponseModelToJson(
        _$_UserResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'compaany': instance.compaany,
    };
