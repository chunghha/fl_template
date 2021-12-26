// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAddressModel _$$_UserAddressModelFromJson(Map<String, dynamic> json) =>
    _$_UserAddressModel(
      street: json['street'] as String?,
      suite: json['suite'] as String?,
      city: json['city'] as String?,
      zip: json['zip'] as String?,
      geo: json['geo'] == null
          ? null
          : UserGeoModel.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserAddressModelToJson(_$_UserAddressModel instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zip': instance.zip,
      'geo': instance.geo,
    };
