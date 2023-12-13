import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class MiddelTitle extends StatelessWidget {
  const MiddelTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: AppString.reneRedzwpi,
          style: TextStyles.font32SemiBoldBrown,
        ),
        TextSpan(
          text: AppString.recommendsYou,
          style: TextStyles.font32ExtraLightBrown,
        ),
      ]),
    );
  }
}
