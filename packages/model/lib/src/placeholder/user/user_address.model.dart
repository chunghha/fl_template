import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_geo.model.dart';

part 'user_address.model.freezed.dart';
part 'user_address.model.g.dart';

@freezed
class UserAddressModel with _$UserAddressModel {
  factory UserAddressModel({
    String? street,
    String? suite,
    String? city,
    String? zip,
    UserGeoModel? geo,
  }) = _UserAddressModel;

  factory UserAddressModel.fromJson(
    Map<String, Object?> json,
  ) =>
      _$UserAddressModelFromJson(json);
}
