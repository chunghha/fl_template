import 'dart:core';

import 'package:flutter_dotenv/flutter_dotenv.dart';

Future initializeConfiguration(String? env) async {
  final filename = env != null ? '$env.env' : 'dev.env';

  return dotenv.load(fileName: 'assets/config/$filename');
}
