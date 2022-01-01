import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:theme/theme.dart';

import 'utils/config_setup.dart';
import 'utils/register_fonts.dart';
import 'widgets/counter.widget.dart';
import 'widgets/user_list.widget.dart';

Future main({String? env = 'qa'}) async {
  WidgetsFlutterBinding.ensureInitialized();
  registerFonts();
  await initializeConfiguration(env);

  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
        backgroundColor: pineColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Counter(),
            Gap(defaultPadding),
            UserList(),
          ],
        ),
      ),
    );
  }
}
