import 'package:animate_do/animate_do.dart';
import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:cooking_app/features/onBoarding/ui/widgets/cooking_easy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShakeX(
            infinite: true,
            duration: const Duration(seconds: 2),
            child: SvgPicture.asset(AppAseets.onBoarding)),
        const Gap(50),
        Text(
          AppString.allTheResipes,
          style: TextStyles.font30SemiBoldBrown.copyWith(height: 1.2),
          textAlign: TextAlign.center,
        ),
        const Gap(10),
        const CookingEasy(),
      ],
    );
  }
}
