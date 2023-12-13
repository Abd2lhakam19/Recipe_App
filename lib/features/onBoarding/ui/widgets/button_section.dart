import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/routing/routes.dart';
import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(
            const Size(double.infinity, 51),
          ),
          backgroundColor: MaterialStateProperty.all(AppColors.brownColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
      onPressed: () {
        Navigator.of(context).pushNamed(Routes.appLayout);
      },
      child: Text(
        AppString.letsStart,
        style: TextStyles.font18SemiBoldWhite,
      ),
    );
  }
}
