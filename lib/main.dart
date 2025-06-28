import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lindoucv/pages/pagedeux.dart';
import 'package:lindoucv/theme/app_theme.dart';
import 'package:lindoucv/theme/theme_controller.dart';
import 'package:lindoucv/views/home.dart';

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
        home: Home(),
      ),
    );
  }
}
