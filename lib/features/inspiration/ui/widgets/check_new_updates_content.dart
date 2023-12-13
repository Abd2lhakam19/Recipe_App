import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckNewUpdatesContent extends StatelessWidget {
  const CheckNewUpdatesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
            text: "Check \n",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: AppColors.brownColor),
          ),
          TextSpan(
            text: "new updates \n",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w200,
                color: AppColors.brownColor),
          ),
        ]),
      ),
    );
  }
}
