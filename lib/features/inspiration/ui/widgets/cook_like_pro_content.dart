import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:cooking_app/features/inspiration/ui/widgets/cook_like_pro_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CookLikeProContent extends StatelessWidget {
  const CookLikeProContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CookLikeProTitle(),
        // const Gap(25),
        Text(
          "Thermomix advanced\ntips and tricks",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.brownColor,
          ),
          // textAlign: TextAlign.start,
        )
      ],
    );
  }
}
