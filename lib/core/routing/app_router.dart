import 'package:cooking_app/app_layout.dart';
import 'package:cooking_app/core/routing/routes.dart';
import 'package:cooking_app/features/onBoarding/ui/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.appLayout:
        return MaterialPageRoute(
          builder: (context) => const AppLayout(),
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
