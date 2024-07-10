import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uza_/features/screens/onboarding/onboarding.dart';
import 'package:uza_/utils/theme/theme.dart';

class Uza_ extends StatelessWidget {
  const Uza_({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: Uza_Theme.lightTheme,
      darkTheme: Uza_Theme.darkTheme,
      home:const OnBoardingScreen()
    );
  }
}