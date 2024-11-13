import 'package:flutter/material.dart';
import 'package:myapp/styles.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {required this.controller,
      required this.textInputType,
      required this.textInputAction,
      required this.hint,
      this.isObsecure = false,
      this.hasSuffix = false,
      this.onPressed,
      super.key});

  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String hint;
  final bool isObsecure;
  final bool hasSuffix;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        style: TextStyles.body,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        obscureText: isObsecure,
        decoration: InputDecoration(
          suffixIcon: hasSuffix
              ? IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    isObsecure ? Icons.visibility : Icons.visibility_off,
                ))
              : null,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1.0,
                color: AppColors.darkGrey,
              ),
              borderRadius: BorderRadius.circular(5.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1.0,
                color: AppColors.darkGrey,
              ),
              borderRadius: BorderRadius.circular(5.0)),
          hintText: hint,
          hintStyle: TextStyles.body,
        ));
  }
}
