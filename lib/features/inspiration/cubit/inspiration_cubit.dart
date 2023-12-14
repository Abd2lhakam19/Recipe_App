import 'package:cooking_app/core/networking/api/api_manager.dart';
import 'package:cooking_app/features/inspiration/cubit/inspiration_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InspirationCubit extends Cubit<InspirationStates> {
  InspirationCubit() : super(InspirLoadingState());

  void getRandomRecipe() async {
    emit(InspirLoadingState());
    try {
      var response = await ApiManager.getRandRecipe();
      if (response.status != "success") {
        emit(InspirFailureState("Error While Loading"));
      } else {
        emit(InspirSucceccState(response.recipes!.data!));
      }
    } catch (e) {
      emit(
        InspirFailureState(e.toString()),
      );
    }
  }
}
