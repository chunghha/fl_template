import 'package:flutter/material.dart';

class TokenInput extends StatelessWidget {
  final TextEditingController controller;

  const TokenInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Token',
        border: OutlineInputBorder(),
        hintText: controller.text,
      ),
    );
  }
}
