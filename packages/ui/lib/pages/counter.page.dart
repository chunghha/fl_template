import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:rfw/formats.dart';
import 'package:rfw/rfw.dart';
import 'package:theme/theme.dart';

import '../constants/current_page.enum.dart';
import '../shared/my_scaffold.dart';

class CounterPage extends HookWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);

    // Just to show how to use rfw
    RemoteWidget getRemoteWidget() {
      const coreName = LibraryName(<String>['core', 'widgets']);
      const mainName = LibraryName(<String>['main']);

      final remoteWidgets = parseLibraryFile('''
    import core.widgets;
    widget root = Container(
      color: 0xFF003547,
      child: Text(text: ["Hello, ", data.greet.name, "!"], textDirection: "ltr"),
    );
  ''');

      final runtime = Runtime();
      runtime.update(coreName, createCoreWidgets());
      runtime.update(mainName, remoteWidgets);

      final data = DynamicContent();
      data.update('greet', <String, Object>{'name': 'RFW'});

      return RemoteWidget(
        runtime: runtime,
        data: data,
        widget: const FullyQualifiedWidgetName(mainName, 'root'),
        onEvent: (name, arguments) {
          debugPrint('user triggered event "$name" with data: $arguments');
        },
      );
    }

    return MyScaffold(
      backgroundColor: surfaceColor,
      appBar: AppBar(
        backgroundColor: pineColor,
        title: Text(
          CURRENT_PAGE.counter.toTitle(),
          style: titleStyle,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(defaultPadding),
            TextButton(
              onPressed: () {
                counter.value++;
              },
              child: const Icon(
                Icons.plus_one,
                color: loveColor,
                size: defaultIconSize,
              ),
            ),
            const Gap(defaultPadding),
            getRemoteWidget(),
          ],
        ),
      ),
    );
  }
}
