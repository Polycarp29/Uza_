import 'package:flutter/material.dart';
import 'package:uza_/utils/theme/custom_themes/text_theme.dart';
import 'package:uza_/utils/theme/custom_themes/elevated_button_theme.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';

class Uza_Theme {
Uza_Theme._();

static ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: Uza_TextTheme.lightTextTheme,
  elevatedButtonTheme: Uza_ElevatedButtonTheme.lightElevatedButtonTheme,
  appBarTheme: UzaAppbar_theme.lightAppBarTheme,
  checkboxTheme: UzaCheckboxtheme.lightCheckboxTheme,
  outlinedButtonTheme: UzaOutlinedButtonTheme.lightOutlinedButtonTheme,
  inputDecorationTheme: UzaTextFormFieldTheme.lightInputDecorationTheme,
  chipTheme: UzaChipTheme.lightChipTheme,
  bottomSheetTheme: UzaBottomSheetTheme.lightBottonSheetTheme,
);
static ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Poppins',
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.black,
  textTheme: Uza_TextTheme.darkTextTheme,
  elevatedButtonTheme: Uza_ElevatedButtonTheme.darkElevatedButtonTheme,
  appBarTheme: UzaAppbar_theme.darkAppBarTheme,
  checkboxTheme: UzaCheckboxtheme.darkCheckboxTheme,
  outlinedButtonTheme: UzaOutlinedButtonTheme.darkOutlinedButtonTheme,
  inputDecorationTheme: UzaTextFormFieldTheme.darkInputDecorationTheme,
  chipTheme: UzaChipTheme.darkChipTheme,
  bottomSheetTheme: UzaBottomSheetTheme.darkBottonSheetTheme,
);

}
