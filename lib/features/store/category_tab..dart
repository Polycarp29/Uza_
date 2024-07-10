import 'package:flutter/material.dart';
import 'package:uza_/common/layouts/grid_layout.dart';
import 'package:uza_/common/widgets/productscart/product_card_horizontal.dart';
import 'package:uza_/features/screens/onboarding/widgets/commontexts/texts/section_heading.dart';

import '../../common/widgets/productscart/brand_show_case.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';


class UzaCategoryTab extends StatelessWidget {
  const UzaCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
                Padding(padding: const EdgeInsets.all(Uza_Sizes.defaultSpace),
                child : Column(    
                  children: [
                    // Brands 
                    const UzaBrandShowcase(images: [Uza_ImageStrings.productImage1, Uza_ImageStrings.productImage2, Uza_ImageStrings.productImage1]),
                    const SizedBox(height: Uza_Sizes.spaceBtwItems),
                    
                    // -- Products 
                    Uza_SectionHeadinng(title: 'You might Like', showActionButton: true, onPressed: (){}),
                    const SizedBox(height: Uza_Sizes.spaceBtwItems),
                      
                    Uzagridlayout(itemCount: 4, itemBuilder: (_, index) => const Uza_ProductCardvertical()),

                    const SizedBox(height: Uza_Sizes.spaceBtwwnSections)
                  ],)
                
                
                ),
              ],
    );
  }
}