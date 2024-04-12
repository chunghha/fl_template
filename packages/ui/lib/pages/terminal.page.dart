import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:theme/theme.dart';
import 'package:xterm/xterm.dart';

import '../constants/current_page.enum.dart';
import '../shared/my_scaffold.dart';

class TerminalPage extends ConsumerWidget {
  const TerminalPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final terminal = Terminal();
    terminal.write('Hello World');

    terminal.onOutput = (output) {
      if (kDebugMode) {
        print('output: $output');
      }
    };

    return MyScaffold(
      backgroundColor: surfaceColor,
      appBar: AppBar(
        backgroundColor: overlayColor,
        title: Text(
          CURRENT_PAGE.terminal.toTitle(),
          style: titleStyle,
        ),
      ),
      body: TerminalView(terminal),
    );
  }
}
