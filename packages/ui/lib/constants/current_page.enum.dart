import 'package:flutter/material.dart';

enum CURRENT_PAGE { counter, firefly, userlist, login }

extension CurrentPageExtension on CURRENT_PAGE {
  Icon toIcon() {
    switch (this) {
      case CURRENT_PAGE.counter:
        return Icon(Icons.home);
      case CURRENT_PAGE.firefly:
        return Icon(Icons.fireplace);
      case CURRENT_PAGE.userlist:
        return Icon(Icons.people);
      case CURRENT_PAGE.login:
        return Icon(Icons.login);
    }
  }

  int toIndex() {
    switch (this) {
      case CURRENT_PAGE.counter:
        return 0;
      case CURRENT_PAGE.firefly:
        return 1;
      case CURRENT_PAGE.userlist:
        return 2;
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
      case CURRENT_PAGE.userlist:
        return 'Users';
      case CURRENT_PAGE.login:
        return 'Login';
    }
  }
}
