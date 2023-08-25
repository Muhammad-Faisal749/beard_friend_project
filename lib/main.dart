
import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


import 'bottom_navigation/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
      return   GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
        ),
        home:  const SplashScreen(),
        // home: BottomNavigationBarScreen(),
        // home: const ReviewScreen(),
        // home: const ReservationsScreen(),
        // home: BeardContestScreen(),
      );


    },);
  }
}
