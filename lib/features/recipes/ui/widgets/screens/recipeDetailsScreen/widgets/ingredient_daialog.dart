import 'package:cooking_app/core/helper/app_strings.dart';
import 'package:cooking_app/features/recipes/ui/widgets/screens/recipeDetailsScreen/widgets/ingredient_section.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/widgets/button_widget.dart';

class IngredientDialog extends StatelessWidget {
  const IngredientDialog({super.key, required this.recipeId});
  final String recipeId;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(child: Text("Ingredients")),
      content: SizedBox(
        width: double.maxFinite,
        child: IngredientSection(
          recipeId: recipeId,
        ),
      ),
      backgroundColor: AppColors.darkWhite,
      actions: [
        ButtonWidget(
          onPressed: () => Navigator.pop(context),
          text: AppString.cansel,
        ),
      ],
    );
  }
}
