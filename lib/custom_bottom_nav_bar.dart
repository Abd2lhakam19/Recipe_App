import 'package:cooking_app/core/helper/app_assets.dart';
import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar(
      {super.key, required this.selectedIndex, required this.onTap});
  final int selectedIndex;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      width: double.infinity,
      height: 63.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(3, (index) {
          return GestureDetector(
            onTap: () => onTap(index),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: selectedIndex == index
                      ? AppColors.brownColor
                      : Colors.transparent),
              child: ImageIcon(
                AssetImage(index == 0
                    ? selectedIndex == index
                        ? AppAseets.ideaLight
                        : AppAseets.idea
                    : index == 1
                        ? selectedIndex == index
                            ? AppAseets.todoListLight
                            : AppAseets.todoList
                        : AppAseets.settings),
                color: index == selectedIndex ? Colors.white : Colors.black,
              ),
            ),
          );
        }),
      ),
    );
  }
}
