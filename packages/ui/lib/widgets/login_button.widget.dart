import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:theme/theme.dart';

import '../constants/current_page.enum.dart';
import '../pods/auth.pod.dart';
import '../shared/router.helper.dart';

class LoginButton extends HookConsumerWidget {
  const LoginButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.tokenController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController tokenController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          // * notify login user state via the provider
          await ref.read(authStateNotifierPod.notifier).loginUser(
                emailController.text,
                passwordController.text,
                tokenController.text,
              );

          goForward(context: context, ref: ref, pageToGo: CURRENT_PAGE.counter);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(defaultPadding),
          foregroundColor: surfaceColor,
          backgroundColor: roseColor,
        ),
        child: const Text(
          'LOG IN',
        ),
      ),
    );
  }
}
