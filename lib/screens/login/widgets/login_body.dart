import 'package:flutter/material.dart';
import 'package:simple_auth/core/app_colors.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
