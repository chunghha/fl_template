import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
        hintText: 'Your Password',
      ),
    );
  }
}
