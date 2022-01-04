import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:theme/theme.dart';

import '../constants/current_page.enum.dart';
import '../shared/my_scaffold.dart';

class CounterPage extends HookWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counter = useState(0);

    return MyScaffold(
      backgroundColor: surfaceColor,
      appBar: AppBar(
        backgroundColor: pineColor,
        title: Text(CURRENT_PAGE.counter.toTitle()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_counter.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
            Gap(defaultPadding),
            TextButton(
              onPressed: () {
                _counter.value++;
              },
              child: Icon(
                Icons.plus_one,
                color: loveColor,
                size: defaultIconSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
