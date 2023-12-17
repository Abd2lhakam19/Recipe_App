import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/routing/routes.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:cooking_app/features/recipes/data/models/recipe_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({super.key, required this.data});
  final Data data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          Routes.recipeDetailsScreen,
          arguments: data,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        height: 180.h,
        width: 160.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              data.image!,
              fit: BoxFit.cover,
            ),
            const Gap(10),
            Text(
              data.name!,
              style: TextStyles.font16MeduimBrown.copyWith(
                fontSize: 14.sp,
              ),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
            const Gap(14),
            Row(
              children: [
                const ImageIcon(
                  AssetImage(AppAseets.clock),
                  size: 14,
                ),
                const Gap(5),
                Text(
                  "${data.time} min",
                  style: TextStyles.font14LightBrown.copyWith(
                    fontSize: 10.sp,
                  ),
                ),
                const Gap(20),
                const ImageIcon(
                  AssetImage(AppAseets.tableware),
                  size: 14,
                ),
                const Gap(5),
                Text(
                  "${data.steps} ppl",
                  style: TextStyles.font14LightBrown.copyWith(
                    fontSize: 10.sp,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
