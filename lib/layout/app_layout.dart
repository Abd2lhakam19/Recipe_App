import 'package:cooking_app/features/inspiration/ui/inspiration_screen.dart';
import 'package:cooking_app/features/recipes/ui/recipes_screen.dart';
import 'package:cooking_app/features/settings/ui/settings_screen.dart';
import 'package:cooking_app/layout/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int selectedIndex = 0;
  List<Widget> screens = const [
    Inspiration(),
    MyRecipes(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
