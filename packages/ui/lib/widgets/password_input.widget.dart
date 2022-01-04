import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key, required this.controller}) : super(key: key);

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
