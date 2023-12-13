import 'package:flutter/material.dart';
import 'package:simple_auth/core/app_colors.dart';

class SocialMediaAuth extends StatelessWidget {
  final IconData icon;
  const SocialMediaAuth({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      overlayColor:
          MaterialStateProperty.resolveWith((states) => Colors.transparent),
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.blackColor,
            width: 2,
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            color: AppColors.blackColor,
          ),
        ),
      ),
    );
  }
}
