import 'package:cooking_app/core/routing/app_router.dart';
import 'package:cooking_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cooksy extends StatelessWidget {
  const Cooksy({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoarding,
        theme: ThemeData(scaffoldBackgroundColor: Color(0xfff5f3f1)),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
