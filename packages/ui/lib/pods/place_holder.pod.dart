import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:model/model.dart';

import '../constants.dart';
import '../services/place_holder.repository.dart';

final usersPod = FutureProvider<List<UserResponseModel>>(_getUsers);

final placeHolderRepoPod = Provider(
  (ref) => PlaceHolderRepository(
    baseUrl: dotenv.get(qPlaceHolderBaseUrl),
  ),
);

Future<List<UserResponseModel>> _getUsers(FutureProviderRef ref) async {
  final _placeHolderRepository = ref.read(placeHolderRepoPod);

  return await _placeHolderRepository.getUsers();
}
