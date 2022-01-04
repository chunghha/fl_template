import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:theme/theme.dart';

import '../pods/token.pod.dart';
import '../widgets/email_input.widget.dart';
import '../widgets/login_button.widget.dart';
import '../widgets/password_input.widget.dart';
import '../widgets/token_input.widget.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _tokenProvider = ref.watch(tokenStateNotifierPod);

    final _emailController =
        useTextEditingController(text: 'test@fake_test.com');
    final _passwordController =
        useTextEditingController(text: 'yourPassIsOkay');
    final _tokenController =
        useTextEditingController(text: _tokenProvider.accessToken);

    final _formMaxWidth =
        MediaQuery.of(context).size.width - (defaultPadding * 3);

    return Scaffold(
      backgroundColor: baseColor,
      body: LayoutBuilder(
        builder: (context, viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      color: baseColor,
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(defaultPadding / 2),
                              constraints:
                                  BoxConstraints(maxWidth: _formMaxWidth),
                              child: Wrap(
                                spacing: defaultPadding,
                                runSpacing: defaultPadding,
                                alignment: WrapAlignment.center,
                                children: [
                                  EmailInput(controller: _emailController),
                                  PasswordInput(
                                    controller: _passwordController,
                                  ),
                                  TokenInput(controller: _tokenController),
                                  LoginButton(
                                    emailController: _emailController,
                                    passwordController: _passwordController,
                                    tokenController: _tokenController,
                                  ),
                                  SizedBox(
                                    height: defaultPadding / 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
