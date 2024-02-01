import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obscuretext;
  const CustomTextField({
    super.key,
    required this.hinttext,
    required this.obscuretext,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 60,
        width: double.infinity,
        child: TextField(
          obscureText: obscuretext,
          controller: controller,
          decoration: InputDecoration(
            hintText: hinttext,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
