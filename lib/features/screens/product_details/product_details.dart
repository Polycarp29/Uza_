import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:uza_/features/screens/home/widgets/product_attributes.dart';
import 'package:uza_/features/screens/home/widgets/product_image_slider.dart';
import 'package:uza_/features/screens/home/widgets/product_metata.dart';
import 'package:uza_/features/screens/home/widgets/product_reviews.dart';
import 'package:uza_/features/screens/home/widgets/ratingsandshare.dart';
import 'package:uza_/features/screens/onboarding/widgets/commontexts/texts/section_heading.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../utils/constants/sizes.dart';
import '../home/widgets/bottm_add_to_cart.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Uza_HelperFun.isDarkMode(context);
    return   Scaffold(
      bottomNavigationBar: const UzaBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Product Image
            // --- Derived from product image slider.
            const ProductImageSlider(),

            // -- Product Details 

            Padding(padding: const EdgeInsets.only(
              right: Uza_Sizes.defaultSpace, left: Uza_Sizes.defaultSpace, bottom: Uza_Sizes.defaultSpace),
              child: Column(
                children: [
                  // -- Rating & Share  Button

                  const RatingsandShare(),

                  // -- Price , Title , Stack & Brand 

                  const UzaProductMetaData(),

                  // -- Attributes 

                  const ProductAttributes(),
                  const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

                  // -- Checkout Button 
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                  const SizedBox(height: Uza_Sizes.spaceBtwwnSections),
                  // -- Description 

                  const Uza_SectionHeadinng(title: 'Description' , showActionButton: false,),
                  const SizedBox(height: Uza_Sizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is an original product from clarks, The stylish brand that makes your outfit stand out. Pure leather material built for durability and style',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: ' Show Less',
                    moreStyle: TextStyle(fontSize:14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // -- Reviews 
                  const SizedBox(height: Uza_Sizes.spaceBtwwnSections),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  const Uza_SectionHeadinng(title: 'Reviews(199)', showActionButton: false,),
                  IconButton(icon : const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen()),)
                  ],)
                  
                  
                ],
                
                )
            
            )
          ],
        ),
      )
    );
  }
}



