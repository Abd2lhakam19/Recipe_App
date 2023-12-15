import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:cooking_app/features/recipes/ui/widgets/recipe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MyRecipes extends StatelessWidget {
  const MyRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          AppString.myRecipes,
          style: TextStyles.font18SemiBoldBrown,
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Row(
            children: [
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const RecipeItem();
                    },
                    separatorBuilder: (context, index) => const Divider(
                          color: Colors.transparent,
                        ),
                    itemCount: 5),
              ),
              const Gap(20),
              Expanded(
                child: Column(
                  children: [
                    const Gap(35),
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return const RecipeItem();
                          },
                          separatorBuilder: (context, index) => const Divider(
                                color: Colors.transparent,
                              ),
                          itemCount: 5),
                    ),
                    const Gap(45)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
