import 'package:flutter/material.dart';
import 'package:simple_auth/core/app_colors.dart';

class LoginUpperText extends StatelessWidget {
  const LoginUpperText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Login",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor),
        ),
        Text(
          "Sign in to learn new things",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: AppColors.blackColor),
        ),
      ],
    );
  }
}
