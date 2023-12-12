import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:cooking_app/features/onBoarding/ui/widgets/button_section.dart';
import 'package:cooking_app/features/onBoarding/ui/widgets/logo_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          AppString.cooksy,
          style: TextStyles.font24SemiBoldBrown,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 100.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
