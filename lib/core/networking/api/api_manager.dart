import 'dart:convert';

import 'package:cooking_app/core/networking/api/api_constants.dart';
import 'package:cooking_app/features/inspiration/data/models/recipe_random_response.dart';
import 'package:cooking_app/features/recipes/data/models/recipe_id_response.dart';
import 'package:cooking_app/features/recipes/data/models/recipe_response.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  static Future<RecipeRandomResponse> getRandRecipe() async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.randEndPoint, {});
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return RecipeRandomResponse.fromJson(json);
    } catch (e) {
      rethrow;
    }
  }

  static Future<RecipeResponse> getAllRecipes() async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.recipesEndPoint, {});
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return RecipeResponse.fromJson(json);
    } catch (e) {
      rethrow;
    }
  }

  static Future<RecipeWithIdResponse> getRecipeWithId(String recipeId) async {
    Uri url = Uri.https(
        ApiConstants.baseUrl, "${ApiConstants.recipesEndPoint}/$recipeId", {});
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return RecipeWithIdResponse.fromJson(json);
    } catch (e) {
      rethrow;
    }
  }
}
