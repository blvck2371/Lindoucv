import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  //observables
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;

  //fonction pour charger le theme
  void toggleTheme() {
    themeMode.value =
        themeMode.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    Get.changeThemeMode(themeMode.value);
  }
}
