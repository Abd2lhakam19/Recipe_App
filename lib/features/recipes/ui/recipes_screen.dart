import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:cooking_app/features/recipes/cubit/recipes_cubit.dart';
import 'package:cooking_app/features/recipes/cubit/recipes_states.dart';
import 'package:cooking_app/features/recipes/ui/widgets/recipe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MyRecipes extends StatefulWidget {
  const MyRecipes({super.key});

  @override
  State<MyRecipes> createState() => _MyRecipesState();
}

class _MyRecipesState extends State<MyRecipes> {
  RecipesCubit recipesCubit = RecipesCubit();
  @override
  void initState() {
    super.initState();
    recipesCubit.getAllRecipes();
  }

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
      body: BlocBuilder<RecipesCubit, RecipesStates>(
        bloc: recipesCubit,
        builder: (context, state) {
          switch (state) {
            case RecipeLoadingState():
              {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.brownColor,
                  ),
                );
              }
            case RecipeFailureState():
              {
                return const Center(
                  child: Text("Error While Loading "),
                );
              }
            case RecipeSucceccState():
              {
                var response = state.data;
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return RecipeItem(
                                data: response[index],
                              );
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
                                    return RecipeItem(
                                      data: response[index + 3],
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const Divider(
                                        color: Colors.transparent,
                                      ),
                                  itemCount: 5),
                            ),
                            const Gap(45)
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
          }
        },
      ),
    );
  }
}
 /* 
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
 */