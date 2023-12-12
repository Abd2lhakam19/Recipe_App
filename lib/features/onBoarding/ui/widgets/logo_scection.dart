import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppAssets.onBoardingLogo),
        const Gap(50),
        Text(
          AppStrings.allTheRecipes,
          style: TextStyles.font30SemiBoldBrown.copyWith(height: 1.2),
          textAlign: TextAlign.center,
        ),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.cookingMadeEasy,
              style: TextStyles.font17RegularBrown,
            ),
            Text(
              AppStrings.at,
              style: TextStyles.font8SemiBoldBrown,
            ),
            Text(
              AppStrings.madeEasy,
              style: TextStyles.font17RegularBrown,
            )
          ],
        )
      ],
    );
  }
}
