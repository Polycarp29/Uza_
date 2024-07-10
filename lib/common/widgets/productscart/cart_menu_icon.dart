import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/features/screens/home/widgets/cart.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class UzaCartCountericon extends StatelessWidget {
  const UzaCartCountericon({
    super.key,
    required this.onPressed, this.iconColor, this.counterBgColor, this.counterTextColor,
  });
 final Color ? iconColor, counterBgColor, counterTextColor;
 final VoidCallback onPressed;
 
  @override
  Widget build(BuildContext context) {
    final dark = Uza_HelperFun.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartScreen()), icon:  Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned( 
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor?? (dark ? Uza_Colors.white : Uza_Colors.black),
              borderRadius: BorderRadius.circular(150),
            ),
          child: Center(
            child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: iconColor, fontSizeFactor: 1.0)),),),
            ),
      ],
    );
  }
}