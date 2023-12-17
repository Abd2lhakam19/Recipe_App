import 'package:cooking_app/features/recipes/data/models/recipe_id_response.dart';

sealed class RecipeWithIdStates {}

class RecipeIdLoadingState extends RecipeWithIdStates {}

class RecipeIdSuccessState extends RecipeWithIdStates {
  Data data;
  RecipeIdSuccessState(this.data);
}

class RecipIdFailureState extends RecipeWithIdStates {
  String errorMessage;
  RecipIdFailureState(this.errorMessage);
}
