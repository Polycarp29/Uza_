import 'package:flutter/material.dart';
import 'package:uza_/utils/constants/colors.dart';


class UzaWidgetContainer extends StatelessWidget {
  const UzaWidgetContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.margin,
    this.padding = 0,
    this.backgroundColor = Uza_Colors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? margin;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
    
      ),
    child: child,
    
    );
  }
}