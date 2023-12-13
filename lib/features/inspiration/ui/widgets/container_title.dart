import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class ContainerTitle extends StatelessWidget {
  const ContainerTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(children: [
      TextSpan(
        text: "Recipe \n",
        style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: AppColors.brownColor),
      ),
      TextSpan(
          text: "of the day",
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w200,
              color: AppColors.brownColor))
    ]));
  }
}
