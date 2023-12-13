import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.brownColor),
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
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: AppColors.brownColor.withOpacity(0.4)),
            ),
            const Gap(12),
            const ImageIcon(
              AssetImage(AppAseets.tableware),
              size: 14,
            ),
            const Gap(5),
            Text(
              "4 ppl",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: AppColors.brownColor.withOpacity(0.4)),
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
