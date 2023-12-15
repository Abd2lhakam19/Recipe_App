import 'package:cooking_app/core/networking/api/api_manager.dart';
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
