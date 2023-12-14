import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_auth/core/app_colors.dart';
import 'package:simple_auth/screens/login/widgets/custom_text_field.dart';

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({
    super.key,
  });

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: formKey,
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              12,
            ),
            bottomLeft: Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              hintText: "Enter your email",
              icon: CupertinoIcons.person,
              labelText: "Email",
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: "Enter your password",
              icon: Icons.visibility,
              labelText: "Password",
              textInputType: TextInputType.name,
              isObscure: true,
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.blackColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: Text("New page"),
                        ),
                      );
                    }), (route) => false);
                  }
                },
                child: Text(
                  "Login",
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Forgot password?",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
