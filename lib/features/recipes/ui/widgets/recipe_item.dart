import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      height: 180.h,
      width: 160.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppAseets.food,
            fit: BoxFit.cover,
          ),
          const Gap(10),
          Text(
            "Veggie breakfast",
            style: TextStyles.font16MeduimBrown,
          ),
          const Gap(20),
          Row(
            children: [
              const ImageIcon(
                AssetImage(AppAseets.clock),
                size: 14,
              ),
              const Gap(5),
              Text(
                "5 min",
                style: TextStyles.font14LightBrown,
              ),
              const Gap(20),
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
          )
        ],
      ),
    );
  }
}
