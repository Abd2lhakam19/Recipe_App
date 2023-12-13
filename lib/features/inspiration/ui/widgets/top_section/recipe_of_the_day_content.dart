import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RecipeOfTheDayContent extends StatelessWidget {
  const RecipeOfTheDayContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Roasted Pumbkin Soup",
          style: TextStyles.font16MeduimBrown,
        ),
        const Gap(5),
        Row(
          children: [
            const ImageIcon(
              AssetImage(AppAseets.clock),
              size: 14,
            ),
            const Gap(5),
            Text(
              "50 min",
              style: TextStyles.font14LightBrown,
            ),
            const Gap(12),
            const ImageIcon(
              AssetImage(AppAseets.tableware),
              size: 14,
            ),
            const Gap(5),
            Text(
              "4 ppl",
              style: TextStyles.font14LightBrown,
            ),
          ],
        ),
        const Gap(15),
        Image.asset(
          AppAseets.food,
        )
      ],
    );
  }
}
