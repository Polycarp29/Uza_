import 'package:flutter/material.dart';

import '../../../../common/styles/rounded_image.dart';
import '../../../../common/widgets/productscart/brand_title_verified.dart';
import '../../../../texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class UzaCardItem extends StatelessWidget {
  const UzaCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         // -- Image 
         RoundedImage(imageurl: Uza_ImageStrings.productImage1,
         width: 60,
         height: 60,
         padding: const EdgeInsets.all(Uza_Sizes.sm),
         backgroundColor: Uza_HelperFun.isDarkMode(context) ? Uza_Colors.darkGrey : Uza_Colors.light,
         ),
         const SizedBox(width: Uza_Sizes.spaceBtwItems),
    
         // -- Title , Price , & Size
    
         Expanded(
           child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextVerified(title: 'Nike'),
              const Flexible(child: UzaProductTitleText(title: 'Brown Casual Clarks Shoes', maxLines: 1)),
           
              // Attributes 
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color:',
                      style: Theme.of(context).textTheme.bodySmall
                    ),
                    TextSpan(
                      text: ' Green,',
                      style: Theme.of(context).textTheme.bodyLarge
                    ),
                    TextSpan(
                      text: ' Size:',
                      style: Theme.of(context).textTheme.bodySmall
                    ),
                    TextSpan(
                      text: ' UK-08',
                      style: Theme.of(context).textTheme.bodyLarge
                    )
                  ]
                ))
           
            ],),
         )
    
      ],);
  }
}