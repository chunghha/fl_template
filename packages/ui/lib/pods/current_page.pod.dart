import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/current_page.enum.dart';
import '../states/current_page.state.dart';

// * maintain page history with a list of CURRENT_PAGE
final currentPagePod =
    StateNotifierProvider<CurrentPageNotifier, List<CurrentPageState>>(
  (_) => CurrentPageNotifier(),
);

class CurrentPageNotifier extends StateNotifier<List<CurrentPageState>> {
  CurrentPageNotifier()
      : super(
          [
            CurrentPageState(
              CURRENT_PAGE.counter,
              CURRENT_PAGE.counter.toPath(),
            ),
          ],
        );

  List<CurrentPageState> remove() {
    // * remove last entry to go back
    final pages = state;
    pages.remove(pages.last);

    return pages;
  }

  List<CurrentPageState> update(CurrentPageState newPage) {
    // * add newState to go as current entry to the state
    final pages = state;
    pages.add(newPage);

    return pages;
  }
}
