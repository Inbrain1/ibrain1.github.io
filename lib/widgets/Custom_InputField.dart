import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  const CustomInputField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
        obscureText: obscureText,
        keyboardType: keyboardType,
      ),
    );
  }
}
