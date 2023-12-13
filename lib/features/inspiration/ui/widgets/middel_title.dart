import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiddelTitle extends StatelessWidget {
  const MiddelTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: "René Redzepi\n",
          style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.brownColor),
        ),
        TextSpan(
          text: "recommends you",
          style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.w200,
              color: AppColors.brownColor),
        ),
      ]),
    );
  }
}
