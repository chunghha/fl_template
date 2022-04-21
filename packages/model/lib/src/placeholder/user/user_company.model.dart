import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_company.model.freezed.dart';
part 'user_company.model.g.dart';

@freezed
class UserCompanyModel with _$UserCompanyModel {
  factory UserCompanyModel({
    String? name,
    String? catchPhrase,
    String? bs,
  }) = _UserCompanyModel;

  factory UserCompanyModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserCompanyModelFromJson(json);
}
