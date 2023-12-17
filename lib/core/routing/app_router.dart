import 'package:cooking_app/core/routing/routes.dart';
import 'package:cooking_app/features/onBoarding/ui/on_boarding_screen.dart';
import 'package:cooking_app/features/recipes/data/models/recipe_response.dart';
import 'package:cooking_app/features/recipes/ui/widgets/screens/recipeDetailsScreen/recipe_details_screen.dart';
import 'package:cooking_app/layout/app_layout.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.appLayout:
        return MaterialPageRoute(
          builder: (context) => const AppLayout(),
        );
      case Routes.recipeDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => RecipeDetailsScreen(
            data: args as Data,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Page Not Found"),
            ),
          ),
        );
    }
  }
}
