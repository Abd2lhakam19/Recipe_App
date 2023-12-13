import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class CookLikeProTitle extends StatelessWidget {
  const CookLikeProTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: AppString.cook,
          style: TextStyles.font32SemiBoldBrown,
        ),
        TextSpan(
          text: AppString.likrPro,
          style: TextStyles.font32ExtraLightBrown,
        ),
      ]),
    );
  }
}
