import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:simple_auth/core/app_colors.dart';
import 'package:simple_auth/screens/login/widgets/custom_login_form.dart';
import 'package:simple_auth/screens/login/widgets/custom_text_field.dart';
import 'package:simple_auth/screens/login/widgets/login_upper_text.dart';
import 'package:simple_auth/screens/login/widgets/social_media_auth.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: LoginUpperText(),
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
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
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomLoginForm(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Or login with",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaAuth(icon: LineIcons.facebookF),
                  SocialMediaAuth(
                    icon: LineIcons.googlePlus,
                  ),
                  SocialMediaAuth(icon: LineIcons.twitter),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account?",
                    ),
                    TextSpan(
                        text: " Create one",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 5, 65, 38),
                        )),
                  ],
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
