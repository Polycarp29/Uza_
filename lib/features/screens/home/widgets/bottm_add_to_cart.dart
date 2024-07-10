import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/widgets/icons/circularicons.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class UzaBottomAddToCart extends StatelessWidget {
  const UzaBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =  Uza_HelperFun.isDarkMode(context);
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: Uza_Sizes.defaultSpace, vertical: Uza_Sizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark? Uza_Colors.darkGrey : Uza_Colors.light,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(Uza_Sizes.cardRadiusLg),
          topLeft: Radius.circular(Uza_Sizes.cardRadiusLg)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            const UzaCircularIcon(
            icon: Iconsax.minus,
            backgroundColor:  Uza_Colors.darkGrey,
            width: 40,
            height: 40,
            color: Uza_Colors.white,
            ),
            const SizedBox(width : Uza_Sizes.spaceBtwItems),
            Text('2', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: Uza_Sizes.spaceBtwItems),
            const UzaCircularIcon(
            icon: Iconsax.add,
            backgroundColor:  Uza_Colors.darkGrey,
            width: 40,
            height: 40,
            color: Uza_Colors.white,
            ),

          ],),

          ElevatedButton(
            onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(Uza_Sizes.md),
              backgroundColor: const Color.fromARGB(255, 83, 82, 82),
              side: const BorderSide(color: Uza_Colors.black),
            ),
            child: const Text('Add to Cart'),
          
          )
        ],)
    );
  }
}