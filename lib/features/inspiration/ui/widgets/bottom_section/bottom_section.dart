import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:cooking_app/features/inspiration/cubit/inspiration_cubit.dart';
import 'package:cooking_app/features/inspiration/cubit/inspiration_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BottomSection extends StatefulWidget {
  const BottomSection({super.key});

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
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
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 25.h),
                height: 433.h,
                width: 325.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.network(response.image!)),
                      const Gap(15),
                      Text(
                        response.name!,
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.brownColor),
                      ),
                      const Gap(15),
                      Text(
                        response.description!,
                        style: TextStyles.font16LightBrown,
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
                      )
                    ],
                  ),
                ),
              );
            }
        }
      },
    );
  }
}

/**
 * Container(
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
            style: TextStyles.font16LightBrown,
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
          )
        ],
      ),
    );
 */
