import 'package:flutter/material.dart';
import 'package:uza_/utils/constants/colors.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../utils/constants/sizes.dart';

class UzaCircularIcon extends StatelessWidget {

  // Create a Circular Icon widget with a background color

  // Properties are 
  // Container [width], [height], [bacgroundColor].
  // Icon's Size Color
  const UzaCircularIcon({
    super.key, 
    this.width, 
    this.height, 
    this.size = Uza_Sizes.lg, 
    required this.icon, 
    this.color, 
    this.backgroundColor, 
    this.onPressed, 
    
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
        ? backgroundColor!
        : Uza_HelperFun.isDarkMode(context)
         ? Uza_Colors.black.withOpacity(0.9)
         : Uza_Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
        
      ), 
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
      
    
    );
  }
}