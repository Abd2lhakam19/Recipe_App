import 'package:cooking_app/features/recipes/cubit/recipe_id_states.dart';
import 'package:cooking_app/features/recipes/cubit/recipes_cubit.dart';
import 'package:cooking_app/features/recipes/ui/widgets/screens/recipeDetailsScreen/widgets/ingredient_section_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IngredientSection extends StatefulWidget {
  const IngredientSection({super.key, required this.recipeId});
  final String recipeId;

  @override
  State<IngredientSection> createState() => _IngredientSectionState();
}

class _IngredientSectionState extends State<IngredientSection> {
  RecipeWithIdCubit recipesCubit = RecipeWithIdCubit();
  @override
  void initState() {
    super.initState();
    recipesCubit.getRecipeWithId(widget.recipeId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeWithIdCubit, RecipeWithIdStates>(
      bloc: recipesCubit,
      builder: (context, state) {
        switch (state) {
          case RecipeIdLoadingState():
            {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          case RecipIdFailureState():
            {
              return const Center(
                child: Text("Error While Loading"),
              );
            }
          case RecipeIdSuccessState():
            {
              var response = state.data;
              return ListView.separated(
                itemBuilder: (context, index) {
                  return IngredientSectionItem(
                    data: "${index + 1} - ${response.ingredients![index]}",
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.transparent,
                ),
                itemCount: 5,
              );
            }
        }
      },
    );
  }
}


/**
 * ListView.separated(
      itemBuilder: (context, index) {
        return const IngredientSectionItem();
      },
      separatorBuilder: (context, index) => const Divider(
        color: Colors.transparent,
      ),
      itemCount: 5,
    );
 */