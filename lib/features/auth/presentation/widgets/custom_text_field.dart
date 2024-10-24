import 'package:demo/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscure;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure,
      cursorColor: AppColors.purpleColor,
      cursorHeight: 22,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.normal,
          )),
    );
  }
}
