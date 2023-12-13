import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:cooking_app/features/inspiration/ui/widgets/bottom_section.dart';
import 'package:cooking_app/features/inspiration/ui/widgets/middel_title.dart';
import 'package:cooking_app/features/inspiration/ui/widgets/top_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Inspiration extends StatelessWidget {
  const Inspiration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            AppString.cooksy,
            style: TextStyles.font24SemiBoldBrown,
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: const ImageIcon(
                  AssetImage(AppAseets.search),
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(20),
                TopSection(),
                Gap(64),
                MiddelTitle(),
                Gap(15),
                BottomSection(),
              ],
            ),
          ),
        ));
  }
}
