import 'package:cooking_app/core/helper/font_weight_helper.dart';
import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24SemiBoldBrown = TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeightHelper.semiBold,
          color: AppColors.brownColor),
      font30SemiBoldBrown = TextStyle(
          fontSize: 30.sp,
          fontWeight: FontWeightHelper.semiBold,
          color: AppColors.brownColor),
      font17RegularBrown = TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeightHelper.regular,
          color: AppColors.brownColor.withOpacity(0.9)),
      font8SemiBoldBrown = TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeightHelper.semiBold,
          color: AppColors.brownColor),
      font18SemiBoldWhite = TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeightHelper.semiBold,
          color: Colors.white);
}
