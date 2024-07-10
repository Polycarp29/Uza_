import 'package:flutter/material.dart';
import 'package:uza_/utils/constants/colors.dart';
import 'package:uza_/utils/constants/sizes.dart';

class UzaRoundedContainer extends StatelessWidget {
  const UzaRoundedContainer({
    super.key, 
    this.width, 
    this.height, 
    this.radius = Uza_Sizes.cardRadiusLg,
    this.child, 
    this.showBorder = false, 
    this.borderColor = Uza_Colors.borderPrimary, 
    this.backgroundColor = Uza_Colors.light, 
    this.padding, 
    this.margin,
    });

    final double ? width;
    final double? height ;
    final double radius; 
    final Widget? child;
    final bool showBorder;
    final Color borderColor;
    final Color backgroundColor;
    final EdgeInsetsGeometry? padding;
    final EdgeInsetsGeometry? margin;


  @override
  Widget build(BuildContext context) {
    return Container(
      width : width,
      height : height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color:borderColor): null,
      ),
    child: child, 
    );
  }
}