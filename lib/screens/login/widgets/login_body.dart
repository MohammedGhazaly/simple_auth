import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_auth/core/app_colors.dart';
import 'package:simple_auth/screens/login/widgets/custom_login_form.dart';
import 'package:simple_auth/screens/login/widgets/custom_text_field.dart';
import 'package:simple_auth/screens/login/widgets/login_upper_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: LoginUpperText(),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.blackColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          16,
                        ),
                        bottomRight: Radius.circular(
                          16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    child: CustomLoginForm(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
