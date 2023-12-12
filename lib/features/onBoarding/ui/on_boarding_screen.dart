import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:cooking_app/features/onBoarding/ui/widgets/button_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'widgets/logo_scection.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          AppStrings.cooksy,
          style: TextStyles.font24SemiBoldBrown,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 100.h),
          child: const Column(
            children: [
              LogoSection(),
              Gap(150),
              ButtonSection(),
            ],
          ),
        ),
      ),
    );
  }
}
