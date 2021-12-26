// https://jsonplaceholder.typicode.com/users

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_address.model.dart';
import 'user_company.model.dart';

part 'user_response.model.freezed.dart';
part 'user_response.model.g.dart';

@freezed
class UserResponseModel with _$UserResponseModel {
  factory UserResponseModel({
    int? id,
    String? name,
    String? username,
    String? email,
    UserAddressModel? address,
    String? phone,
    String? website,
    UserCompanyModel? compaany,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(
    Map<String, Object?> json,
  ) =>
      _$UserResponseModelFromJson(json);
}
