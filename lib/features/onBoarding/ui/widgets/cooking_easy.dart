import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class CookingEasy extends StatelessWidget {
  const CookingEasy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: AppString.cookingOn,
          style: TextStyles.font17RegularBrown,
        ),
        TextSpan(
          text: AppString.at,
          style: TextStyles.font8SemiBoldBrown,
        ),
        TextSpan(
          text: AppString.madeEasy,
          style: TextStyles.font17RegularBrown,
        ),
      ]),
    );
  }
}
