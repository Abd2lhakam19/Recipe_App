import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckNewUpdatesContent extends StatelessWidget {
  const CheckNewUpdatesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: AppString.check,
            style: TextStyles.font32SemiBoldBrown,
          ),
          TextSpan(
              text: AppString.newUpdates,
              style: TextStyles.font32ExtraLightBrown),
        ]),
      ),
    );
  }
}
