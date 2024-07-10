import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/utils/constants/colors.dart';
import 'package:uza_/utils/constants/sizes.dart';
import 'package:uza_/utils/device/device_utility.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

class UzaSearchContainer extends StatelessWidget {
  const UzaSearchContainer({
    super.key, 
    required this.text, 
    this.icon = Iconsax.search_normal,  
    this.showBackground = true,  
    this.showBorder = true ,
    this.onTap, 
    this.padding = const EdgeInsets.symmetric(horizontal: Uza_Sizes.defaultSpace),
  });
// Create the Properties 

  final  String text; 
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = Uza_HelperFun.isDarkMode(context);
    return GestureDetector(
      onTap : onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: Uza_DeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(Uza_Sizes.md),
          decoration : BoxDecoration(
            color: showBackground? dark ? Uza_Colors.dark: Uza_Colors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(Uza_Sizes.cardRadiusLg), 
            border: showBorder? Border.all(color: Uza_Colors.softGrey): null,
          ),
          child: Row(
            children: [
              Icon(icon, color: Uza_Colors.darkGrey),
              const SizedBox(height:  Uza_Sizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
      
            ],)
        
        ),
      ),
    );
  }
}