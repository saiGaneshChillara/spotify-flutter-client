import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscure;

  const AuthTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
      controller: controller,
      obscureText: isObscure,
      validator: (val) {
        if (val!.trim().isEmpty) {
          return "$hintText is missing";
        }
        return null;
      },
    );
  }
}