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
          color: AppColors.brownColor),
      font18SemiBoldWhite = TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeightHelper.semiBold,
          color: Colors.white),
      font8SemiBoldBrown = TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeightHelper.semiBold,
          color: AppColors.brownColor),
      font32SemiBoldBrown = TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeightHelper.semiBold,
          color: AppColors.brownColor),
      font32ExtraLightBrown = TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeightHelper.extraLight,
          color: AppColors.brownColor),
      font16MeduimBrown = TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeightHelper.medium,
          color: AppColors.brownColor),
      font16LightBrown = TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeightHelper.light,
          color: AppColors.brownColor),
      font14LightBrown = TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeightHelper.light,
        color: AppColors.brownColor.withOpacity(0.4),
      );
}
