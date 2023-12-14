import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:cooking_app/features/inspiration/cubit/inspiration_cubit.dart';
import 'package:cooking_app/features/inspiration/cubit/inspiration_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RecipeOfTheDayContent extends StatefulWidget {
  const RecipeOfTheDayContent({super.key});

  @override
  State<RecipeOfTheDayContent> createState() => _RecipeOfTheDayContentState();
}

class _RecipeOfTheDayContentState extends State<RecipeOfTheDayContent> {
  InspirationCubit inspirationCubit = InspirationCubit();
  @override
  void initState() {
    super.initState();
    inspirationCubit.getRandomRecipe();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InspirationCubit, InspirationStates>(
      bloc: inspirationCubit,
      builder: (context, state) {
        switch (state) {
          case InspirLoadingState():
            {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.brownColor,
                ),
              );
            }
          case InspirFailureState():
            {
              return const Center(
                child: Text("Errorrrr"),
              );
            }
          case InspirSucceccState():
            {
              var response = state.data;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    response.name!,
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
                        "${response.time} min",
                        style: TextStyles.font14LightBrown,
                      ),
                      const Gap(12),
                      const ImageIcon(
                        AssetImage(AppAseets.tableware),
                        size: 14,
                      ),
                      const Gap(5),
                      Text(
                        "${response.steps} ppl",
                        style: TextStyles.font14LightBrown,
                      ),
                    ],
                  ),
                  const Gap(15),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Image.network(
                      response.image!,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              );
            }
        }
      },
    );
  }
}
