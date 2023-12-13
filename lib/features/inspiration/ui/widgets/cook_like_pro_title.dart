import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CookLikeProTitle extends StatelessWidget {
  const CookLikeProTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(children: [
        TextSpan(
          text: "Cook \n",
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: AppColors.brownColor),
        ),
        TextSpan(
          text: "Like pro \n",
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w200,
              color: AppColors.brownColor),
        ),
      ]),
    );
  }
}
