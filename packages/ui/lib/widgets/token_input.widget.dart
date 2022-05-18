import 'package:flutter/material.dart';

class TokenInput extends StatelessWidget {
  const TokenInput({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Token',
        border: const OutlineInputBorder(),
        hintText: controller.text,
      ),
    );
  }
}
