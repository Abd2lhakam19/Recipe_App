import 'package:cooking_app/features/inspiration/ui/widgets/top_section/check_new_updates_content.dart';
import 'package:cooking_app/features/inspiration/ui/widgets/top_section/container_title.dart';
import 'package:cooking_app/features/inspiration/ui/widgets/top_section/cook_like_pro_content.dart';
import 'package:cooking_app/features/inspiration/ui/widgets/top_section/recipe_of_the_day_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 334.h,
            width: 243.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
              child: const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContainerTitle(),
                    Gap(25),
                    RecipeOfTheDayContent(),
                  ],
                ),
              ),
            ),
          ),
          const Gap(15),
          Column(
            children: [
              const Gap(70),
              Container(
                  height: 195.h,
                  width: 243.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const CookLikeProContent()),
              const Gap(15),
              Container(
                height: 126.h,
                width: 243.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const CheckNewUpdatesContent(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
