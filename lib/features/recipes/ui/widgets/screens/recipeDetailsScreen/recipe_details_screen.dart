import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:cooking_app/core/widgets/button_widget.dart';
import 'package:cooking_app/features/recipes/data/models/resipe_response.dart';
import 'package:cooking_app/features/recipes/ui/widgets/screens/recipeDetailsScreen/widgets/ingredient_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RecipeDetailsScreen extends StatelessWidget {
  const RecipeDetailsScreen({super.key, this.data});
  final Data? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const ImageIcon(
            AssetImage(
              AppAseets.arrowBackIcon,
            ),
            color: AppColors.brownColor,
          ),
        ),
        title: Text(
          "Recipe Details",
          style: TextStyles.font18SemiBoldBrown,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.network(
                  data!.image!,
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(32),
              Text(
                data!.name!,
                style: TextStyles.font18SemiBoldBrown,
              ),
              const Gap(20),
              Text(
                data!.description!,
                style: TextStyles.font17RegularBrown.copyWith(fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
              const Gap(40),
              ButtonWidget(
                onPressed: () {},
                text: "Show Ingredients",
              ),
              const Gap(15),
              ButtonWidget(
                onPressed: () {},
                text: "Let's Cook",
              )
            ],
          ),
        ),
      ),
    );
  }
}
