import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/icons/circularicons.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProductQuantitywithaddandremovebtn extends StatelessWidget {
  const ProductQuantitywithaddandremovebtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        UzaCircularIcon(icon: Iconsax.minus,
        width: 32, 
        height: 32,
        size: Uza_Sizes.md,
        color: Uza_HelperFun.isDarkMode(context) ? Uza_Colors.white: Colors.black,
        backgroundColor: Uza_HelperFun.isDarkMode(context) ? Uza_Colors.darkGrey: Uza_Colors.light,
        ),
        const SizedBox(width: Uza_Sizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: Uza_Sizes.spaceBtwItems),
    
        const UzaCircularIcon(icon: Iconsax.add,
        width: 32, 
        height: 32,
        size: Uza_Sizes.md,
        color: Uza_Colors.white,
        backgroundColor: Uza_Colors.primary,
    ),
      ],
    );
  }
}