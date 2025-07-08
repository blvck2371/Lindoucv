import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lindoucv/index.dart';
import 'package:lindoucv/features/home/views/pagedeux.dart';
import 'package:lindoucv/core/theme/app_theme.dart';
import 'package:lindoucv/core/theme/theme_controller.dart';


void main() {
  Get.put(ThemeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeController themeController = Get.find();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lindoucv',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,

        themeMode: themeController.themeMode.value,
        home: HomeScreen(),
      ),
    );
  }
}
