import 'package:cooking_app/features/recipes/data/models/recipe_response.dart';

sealed class RecipesStates {}

class RecipeLoadingState extends RecipesStates {}

class RecipeSucceccState extends RecipesStates {
  List<Data> data;

  RecipeSucceccState(this.data);
}

class RecipeFailureState extends RecipesStates {
  String errorMessage;
  RecipeFailureState(this.errorMessage);
}
