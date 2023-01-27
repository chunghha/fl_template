// ignore_for_file: avoid_as

import 'package:adapter/adapter.dart';
import 'package:dio/dio.dart';
import 'package:model/model.dart';

class PlaceHolderRepository {
  PlaceHolderRepository({required this.baseUrl});

  late final String baseUrl;

  Future<List<UserResponseModel>> getUsers() async {
    final placeHolderAdapter = PlaceHolderAdapter(
      baseUrl: baseUrl,
    );

    try {
      final users = <UserResponseModel>[];
      // ignore: avoid_dynamic_calls
      final res = (await placeHolderAdapter.getUsers()).data as List;

      for (final user in res) {
        users.add(UserResponseModel.fromJson(user as Map<String, Object?>));
      }

      return users;
    } on DioError catch (dioError) {
      throw AdapterException.fromDioError(dioError);
    }
  }
}
