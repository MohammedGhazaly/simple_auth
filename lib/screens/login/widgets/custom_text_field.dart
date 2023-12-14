import 'package:flutter/material.dart';
import 'package:simple_auth/core/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final String labelText;
  final TextInputType textInputType;
  final bool isObscure;
  const CustomTextField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.labelText,
    this.textInputType = TextInputType.emailAddress,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Email can't be empty";
        }
        return null;
      },
      keyboardType: textInputType,
      obscureText: isObscure,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          padding: EdgeInsets.all(0),
          onPressed: () {},
          icon: Icon(icon),
        ),
        hintText: hintText,
        label: Text(labelText),
        floatingLabelStyle: TextStyle(
          fontSize: 14,
          color: AppColors.blackColor,
        ),
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        contentPadding: EdgeInsets.all(12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.blackColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
