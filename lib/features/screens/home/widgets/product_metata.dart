import 'package:flutter/material.dart';
import 'package:uza_/common/prices/prices.dart';
import 'package:uza_/common/styles/rounded_container.dart';
import 'package:uza_/common/widgets/image_text/uza_Circularimage.dart';
import 'package:uza_/common/widgets/productscart/brand_title_verified.dart';
import 'package:uza_/texts/section_heading.dart';
import 'package:uza_/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';

class UzaProductMetaData extends StatelessWidget {
  const UzaProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // -- Buy Price and Sell Price 
        Row(
          children: [
            // Sale Tag 
            UzaRoundedContainer(
              radius: Uza_Sizes.sm,
              backgroundColor: Uza_Colors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: Uza_Sizes.sm, vertical:Uza_Sizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: Uza_Colors.darkGrey))
            ),
            const SizedBox(width: Uza_Sizes.spaceBtwItems),

            // Price 

            Text('\KES 3500', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: Uza_Sizes.spaceBtwItems),
            const UzaProductPrice(price: '2500', isLarge: true),
          ],),
          const SizedBox(height: Uza_Sizes.spaceBtwItems / 1.5),

          // -- Title 
          const UzaProductTitleText(title: 'Classic Casual Clarks'),
          const SizedBox(height: Uza_Sizes.spaceBtwItems / 1.5),


          // -- Stock Status
          Row(
            children: [
              const UzaProductTitleText(title: 'Status'),
              const SizedBox(width: Uza_Sizes.spaceBtwItems),
              Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
          
          const SizedBox(height: Uza_Sizes.spaceBtwItems / 1.5),


          // -- Brand 
          const Row(
            children: [
              // -- Display Image in a circular 
              UzaCircularImage(
                image:  Uza_ImageStrings.shoeIcon,
                width: 32,
                height: 32,
                ),
              BrandTitleTextVerified(title: 'Nike', brandTextSize: TextSizes.medium,),
            ],
          )


      ],);
  }
}