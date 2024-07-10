// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uza_/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:uza_/common/widgets/productscart/product_card_horizontal.dart';
import 'package:uza_/features/screens/home/widgets/home_appbar.dart';
import 'package:uza_/features/screens/home/widgets/homecategories.dart';
import 'package:uza_/features/screens/home/widgets/promo_slider.dart';
import 'package:uza_/features/screens/home/widgets/section_heading.dart';
import 'package:uza_/utils/constants/image_strings.dart';
import 'package:uza_/utils/constants/sizes.dart';

import '../../../../common/layouts/grid_layout.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../onboarding/widgets/commontexts/texts/section_heading.dart';


class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:    [
            /// Header 
          UzaPrimaryHeaderContainer(
          child: Column(
            children:  const [
              // AppBar
            UzaHomeAppBar(),

            SizedBox(height:  Uza_Sizes.spaceBtwwnSections),

              // SearchBar ----
            UzaSearchContainer(text: '  Search in Store'),
            SizedBox(height:  Uza_Sizes.spaceBtwwnSections), // Create a container 


             Padding(
              padding: EdgeInsets.only(left: Uza_Sizes.defaultSpace),
              child: Column(
                children: [
                Uza_SectionHeadinng(title: 'Popular Categories', showActionButton: false, textColor: Colors.white),
                SizedBox(height: Uza_Sizes.spaceBtwItems),// Fluter widget for heading

                // Scrollable categories 
                
                HomeCategories(),

              ],
              ),
             ),

             SizedBox(height: Uza_Sizes.spaceBtwwnSections),
            ],
            ),
          ),
          // Body -- 
        Padding(
          padding: EdgeInsets.all(Uza_Sizes.defaultSpace),
          // Banners to be listed on the slides 
          child: Column(
            children: [
              PromoSlides(banners: const [Uza_ImageStrings.promoBanner4, Uza_ImageStrings.promoBanner5, Uza_ImageStrings.promoBanner6],),

              const SizedBox(height: Uza_Sizes.spaceBtwwnSections), 
              
              // Heading 
              UzaHeadingSection(title: 'Popular Products', onPressed: (){}),
              const SizedBox(height: Uza_Sizes.spaceBtwItems),

              /// Popular Products section 
              Uzagridlayout(itemCount: 4, itemBuilder: (_, index) => const Uza_ProductCardvertical())


              

            ],
          )
        )
          
          ],
          
          ),
        ),
    );
  }
}






