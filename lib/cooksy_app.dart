import 'package:cooking_app/core/routing/app_router.dart';
import 'package:cooking_app/core/routing/routes.dart';
import 'package:cooking_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CooksyApp extends StatelessWidget {
  const CooksyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoarding,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.darkWhite),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
