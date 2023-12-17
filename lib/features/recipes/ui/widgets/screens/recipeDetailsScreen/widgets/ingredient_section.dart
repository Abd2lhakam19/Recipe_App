import 'package:cooking_app/features/recipes/ui/widgets/screens/recipeDetailsScreen/widgets/ingredient_section_item.dart';
import 'package:flutter/material.dart';

class IngredientSection extends StatelessWidget {
  const IngredientSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return const IngredientSectionItem();
          },
          separatorBuilder: (context, index) => const Divider(
                color: Colors.transparent,
              ),
          itemCount: 5),
    );
  }
}
