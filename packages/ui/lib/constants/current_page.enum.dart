import 'package:flutter/material.dart';

// ignore: camel_case_types
enum CURRENT_PAGE { counter, firefly, map, userlist, login }

extension CurrentPageExtension on CURRENT_PAGE {
  Icon toIcon() {
    switch (this) {
      case CURRENT_PAGE.counter:
        return const Icon(Icons.home);
      case CURRENT_PAGE.firefly:
        return const Icon(Icons.fireplace);
      case CURRENT_PAGE.map:
        return const Icon(Icons.map);
      case CURRENT_PAGE.userlist:
        return const Icon(Icons.people);
      case CURRENT_PAGE.login:
        return const Icon(Icons.login);
    }
  }

  int toIndex() {
    switch (this) {
      case CURRENT_PAGE.counter:
        return 0;
      case CURRENT_PAGE.firefly:
        return 1;
      case CURRENT_PAGE.map:
        return 2;
      case CURRENT_PAGE.userlist:
        return 3;
      case CURRENT_PAGE.login:
        return -1;
    }
  }

  String toPath() {
    switch (this) {
      case CURRENT_PAGE.counter:
        return '/';
      case CURRENT_PAGE.firefly:
        return '/firefly';
      case CURRENT_PAGE.map:
        return '/map';
      case CURRENT_PAGE.userlist:
        return '/userlist';
      case CURRENT_PAGE.login:
        return '/login';
    }
  }

  String toTitle() {
    switch (this) {
      case CURRENT_PAGE.counter:
        return 'Counter';
      case CURRENT_PAGE.firefly:
        return 'Crazy Firefly';
      case CURRENT_PAGE.map:
        return 'Map';
      case CURRENT_PAGE.userlist:
        return 'Users';
      case CURRENT_PAGE.login:
        return 'Login';
    }
  }
}
