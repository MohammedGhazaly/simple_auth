import 'package:flutter/material.dart';
import 'package:simple_auth/screens/login/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody(),
    );
  }
}
