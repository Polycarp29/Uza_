import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/prices/prices.dart';
import 'package:uza_/common/styles/rounded_image.dart';
import 'package:uza_/common/widgets/icons/circularicons.dart';
import 'package:uza_/common/widgets/productscart/brand_title_verified.dart';
import 'package:uza_/common/widgets/productscart/shadows.dart';
import 'package:uza_/texts/section_heading.dart';
import 'package:uza_/utils/constants/colors.dart';
import 'package:uza_/utils/constants/image_strings.dart';
import 'package:uza_/utils/constants/sizes.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../features/screens/product_details/product_details.dart';
import '../../styles/rounded_container.dart';

class Uza_ProductCardvertical extends StatelessWidget {
  const Uza_ProductCardvertical({super.key});

  @override
  Widget build(BuildContext context) {
    final  dark = Uza_HelperFun.isDarkMode(context);

    // Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap : () => Get.to(() => const ProductDetails()),
      // Ontap redirect
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [Uza_ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(Uza_Sizes.productImageRadius),
          color: dark ? Uza_Colors.darkGrey: Uza_Colors.white,
          
      
        ), 
        child: Column(
          children: [
            /// Create a thumbnail, wishlist button, discount tag
            UzaRoundedContainer(
              height: 180, 
              width: 180,
              padding: const EdgeInsets.all(Uza_Sizes.sm), 
              backgroundColor: dark ? Uza_Colors.dark : Uza_Colors.light,
              child:  Stack(
                children: [
                  // ThumbNail Image 
                  const RoundedImage(imageurl:Uza_ImageStrings.productImage1, applyImageRadius: true), 
      
                  // Sale Tag 
                  Positioned(
                    top: 12,
                    child: UzaRoundedContainer(
                      radius: Uza_Sizes.sm, 
                      backgroundColor: Uza_Colors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: Uza_Sizes.sm, vertical: Uza_Sizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: Uza_Colors.darkGrey)),
                    ),
                  ), 
                  // --Favorite Icon  Button 
      
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: UzaCircularIcon(icon: Iconsax.heart5, color: Colors.red))
      
                ]
              ),
            ),
            const SizedBox(height: Uza_Sizes.spaceBtwItems / 2),
      
           // Details 
            const Padding(
            padding:  EdgeInsets.only(left: Uza_Sizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align the texts from the left
              children: [
                UzaProductTitleText(title: 'Stylish Clarks', smallSize: true),
                SizedBox(height : Uza_Sizes.spaceBtwItems / 2),
                BrandTitleTextVerified(title: 'Nike'),

                  
              ],)
            
            ),

            // Add Spacer() here ro keep the height of each box same in case 1 or 2 lines of Headings 
                  const Spacer(),
      
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
      
                      // Price 
                     const Padding(
                       padding:  EdgeInsets.only(left: Uza_Sizes.sm),
                       child:  UzaProductPrice(price: '2500'),
                     ),

                     // Add to cart Button
                      Container(
                       decoration: const BoxDecoration(
                        color: Uza_Colors.dark, 
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Uza_Sizes.cardRadiusMd),
                          bottomRight: Radius.circular(Uza_Sizes.productImageRadius),
                        )
                       ),
                       child: const SizedBox(
                              width: Uza_Sizes.iconLg * 1.2,
                              height: Uza_Sizes.iconLg * 1.2,
                              child: Center(child: Icon(Iconsax.add, color: Uza_Colors.white))),
      
                        
                        
                        )
                    ],)
          ]
        ),
      
      ),
    );
  }
}



