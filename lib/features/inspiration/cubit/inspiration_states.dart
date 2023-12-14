import 'package:cooking_app/features/inspiration/data/models/recipe_random_response.dart';

sealed class InspirationStates {}

class InspirLoadingState extends InspirationStates {}

class InspirSucceccState extends InspirationStates {
  Data data;

  InspirSucceccState(this.data);
}

class InspirFailureState extends InspirationStates {
  String errorMessage;
  InspirFailureState(this.errorMessage);
}
