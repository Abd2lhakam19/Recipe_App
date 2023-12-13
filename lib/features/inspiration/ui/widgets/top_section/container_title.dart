import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class ContainerTitle extends StatelessWidget {
  const ContainerTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: AppString.recipe,
        style: TextStyles.font32SemiBoldBrown,
      ),
      TextSpan(
        text: AppString.ofTheDay,
        style: TextStyles.font32ExtraLightBrown,
      )
    ]));
  }
}
