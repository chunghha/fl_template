import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:theme/theme.dart';

import '../pods/token.pod.dart';
import '../widgets/email_input.widget.dart';
import '../widgets/login_button.widget.dart';
import '../widgets/password_input.widget.dart';
import '../widgets/token_input.widget.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokenProvider = ref.watch(tokenStateNotifierPod);

    final emailController =
        useTextEditingController(text: 'test@fake_test.com');
    final passwordController = useTextEditingController(text: 'yourPassIsOkay');
    final tokenController =
        useTextEditingController(text: tokenProvider.accessToken);

    final formMaxWidth =
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
                    ColoredBox(
                      color: baseColor,
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(defaultPadding / 2),
                              constraints:
                                  BoxConstraints(maxWidth: formMaxWidth),
                              child: Wrap(
                                spacing: defaultPadding,
                                runSpacing: defaultPadding,
                                alignment: WrapAlignment.center,
                                children: [
                                  EmailInput(controller: emailController),
                                  PasswordInput(
                                    controller: passwordController,
                                  ),
                                  TokenInput(controller: tokenController),
                                  const Gap(defaultPadding / 8),
                                  LoginButton(
                                    emailController: emailController,
                                    passwordController: passwordController,
                                    tokenController: tokenController,
                                  ),
                                  const Gap(
                                    defaultPadding / 8,
                                  ),
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
