import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 25.h),
      height: 433.h,
      width: 325.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppAseets.food2),
          const Gap(15),
          Text(
            "Vegan Thai Curry Soup",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.brownColor),
          ),
          const Gap(15),
          Text(
            "Spice lovers will slurp up this soup in seconds. Featuring chili powder, smoked paprika, and cayenne pepper, every bowl brings the heat.",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: AppColors.brownColor),
          ),
          const Gap(30),
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
                    fontSize: 14.sp,
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
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.brownColor.withOpacity(0.4)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
