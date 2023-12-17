import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:cooking_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class IngredientSectionItem extends StatelessWidget {
  const IngredientSectionItem({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.font14LightBrown.copyWith(color: AppColors.brownColor),
    );
  }
}
