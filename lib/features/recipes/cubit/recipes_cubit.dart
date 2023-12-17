import 'package:cooking_app/core/networking/api/api_manager.dart';
import 'package:cooking_app/features/recipes/cubit/recipe_id_states.dart';
import 'package:cooking_app/features/recipes/cubit/recipes_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecipesCubit extends Cubit<RecipesStates> {
  RecipesCubit() : super(RecipeLoadingState());

  void getAllRecipes() async {
    emit(RecipeLoadingState());
    try {
      var response = await ApiManager.getAllRecipes();
      if (response.status != "success") {
        emit(RecipeFailureState("Error While Loading"));
      } else {
        emit(RecipeSucceccState(response.recipes!.data!));
      }
    } catch (e) {
      emit(
        RecipeFailureState(e.toString()),
      );
    }
  }
}

class RecipeWithIdCubit extends Cubit<RecipeWithIdStates> {
  RecipeWithIdCubit() : super(RecipeIdLoadingState());

  void getRecipeWithId(String recipeId) async {
    emit(
      RecipeIdLoadingState(),
    );
    try {
      var response = await ApiManager.getRecipeWithId(recipeId);
      if (response.status != "success") {
        emit(
          RecipIdFailureState("Error While Loading"),
        );
      } else {
        emit(
          RecipeIdSuccessState(response.recipes!.data!),
        );
      }
    } catch (e) {
      emit(
        RecipIdFailureState(
          e.toString(),
        ),
      );
    }
  }
}
