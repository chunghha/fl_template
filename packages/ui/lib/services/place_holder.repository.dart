import 'package:adapter/adapter.dart';
import 'package:dio/dio.dart';
import 'package:model/model.dart';

class PlaceHolderRepository {
  late final String baseUrl;

  PlaceHolderRepository({required this.baseUrl});

  Future<List<UserResponseModel>> getUsers() async {
    final _placeHolderAdapter = PlaceHolderAdapter(
      baseUrl: baseUrl,
    );

    try {
      final List<UserResponseModel> _users = [];
      final List<dynamic> _res =
          ((await _placeHolderAdapter.getUsers()).data) as List;

      for (var _r in _res) {
        _users.add(UserResponseModel.fromJson(_r));
      }

      return _users;
    } on DioError catch (dioError) {
      throw AdapterException.fromDioError(dioError);
    }
  }
}
