import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_geo.model.freezed.dart';
part 'user_geo.model.g.dart';

@freezed
class UserGeoModel with _$UserGeoModel {
  factory UserGeoModel({
    String? lat,
    String? lng,
  }) = _UserGeoModel;

  factory UserGeoModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserGeoModelFromJson(json);
}
