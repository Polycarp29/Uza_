
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class Uza_ShadowStyle{

  static final verticalProductShadow = BoxShadow(
    color: Uza_Colors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: Uza_Colors.darkGrey.withOpacity(0.1),
    blurRadius: 50, 
    spreadRadius: 7,
    offset: const Offset(0,2),
  );
}