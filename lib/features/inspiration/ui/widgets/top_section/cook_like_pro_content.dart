import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:cooking_app/features/inspiration/ui/widgets/top_section/cook_like_pro_title.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CookLikeProContent extends StatelessWidget {
  const CookLikeProContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CookLikeProTitle(),
        const Gap(25),
        Text(
          "Thermomix advanced\ntips and tricks",
          style: TextStyles.font16MeduimBrown,
        )
      ],
    );
  }
}
