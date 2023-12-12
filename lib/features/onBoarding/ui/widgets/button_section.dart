import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.brownColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 51.h),
        ),
      ),
      child: Text(
        AppStrings.letsStart,
        style: TextStyles.font18SemiBoldWhite,
      ),
    );
  }
}
