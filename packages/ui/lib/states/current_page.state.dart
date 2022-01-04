import 'package:equatable/equatable.dart';

import '../constants/current_page.enum.dart';

class CurrentPageState extends Equatable {
  // * store not just an enum for routing for goForward()
  // * but also full path as well for goBack() with params
  final CURRENT_PAGE currentPage;
  final String path;

  const CurrentPageState(this.currentPage, this.path);

  @override
  List<Object?> get props => [currentPage, path];

  @override
  String toString() => 'currentPage: ${currentPage.name}, path: $path';
}
