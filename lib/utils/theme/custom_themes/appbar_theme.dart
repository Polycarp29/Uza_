import 'package:flutter/material.dart';
import 'package:uza_/utils/constants/sizes.dart';

class UzaAppbar_theme{
  UzaAppbar_theme._();


  static const lightAppBarTheme = AppBarTheme(
  elevation : 0,
  centerTitle: false,
  scrolledUnderElevation: 0,
  backgroundColor: Colors.transparent,
  surfaceTintColor: Colors.transparent,
  iconTheme: IconThemeData(color:Colors.black, size: Uza_Sizes.iconMd),
  actionsIconTheme: IconThemeData(color : Colors.black, size: Uza_Sizes.iconMd),
  titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
  );
  
  static const darkAppBarTheme = AppBarTheme(
  elevation : 0,
  centerTitle: false,
  scrolledUnderElevation: 0,
  backgroundColor: Colors.transparent,
  surfaceTintColor: Colors.transparent,
  iconTheme: IconThemeData(color:Colors.black, size: Uza_Sizes.iconMd),
  actionsIconTheme: IconThemeData(color : Colors.white, size: Uza_Sizes.iconMd ),
  titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),

  );


}