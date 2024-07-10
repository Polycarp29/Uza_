import 'package:flutter/material.dart';
import 'package:uza_/common/prices/prices.dart';
import 'package:uza_/common/styles/rounded_container.dart';
import 'package:uza_/features/screens/onboarding/widgets/commontexts/texts/section_heading.dart';
import 'package:uza_/texts/section_heading.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/chips/choice_chip.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';


//-- This Creates special attributes for the product details 

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});
  
  get children => null;

  @override
  Widget build(BuildContext context) {
    final dark = Uza_HelperFun.isDarkMode(context);
    return  Column(
      children: [
        // -- Selected Attributes Pricing & Description 
        UzaRoundedContainer(
          padding: const EdgeInsets.all(Uza_Sizes.md) ,
          backgroundColor: dark ? Uza_Colors.darkGrey: Uza_Colors.softGrey,
          child:  Column(
            children: [


              Row(
                children: [
                  const Uza_SectionHeadinng(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: Uza_Sizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                    children: [
                      const UzaProductTitleText(title: 'Price', smallSize: true),
                      
                      // -- Actual Price 
                      Text(
                        ' \KES3500',
                        style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),

                      ),
                      const SizedBox(width: Uza_Sizes.spaceBtwItems),
                      // -- Sale Price 
                    

                      const UzaProductPrice(price:' 2500'),


                    ]
                  ),

                  // --Stack 

                   Row(
                    children: [
                      const UzaProductTitleText(title: 'Stock' ,smallSize: true,),
                      Text(' In Stock', style: Theme.of(context).textTheme.titleMedium),

                    ],),
                    ],
                  ),

                  
                ],),
                const UzaProductTitleText(
                  title: ' This is the Description of the Product and it can go upto max 4 lines',
                  smallSize: true,
                  maxLines: 4, 
                   ),
                  
                // Variation Description

            ],)
        ),
        const SizedBox(height: Uza_Sizes.spaceBtwItems),


        // -- Attributes 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Uza_SectionHeadinng(title: 'Colors',showActionButton: false,),
              const SizedBox(height: Uza_Sizes.spaceBtwItems /2),
              Wrap(
                spacing: 8,
                children: [
                    choicechip(text: 'Green', selected: true, onSelected: (value){},),
                    choicechip(text: 'Blue', selected: false, onSelected: (value){}),
                    choicechip(text: 'Grey', selected: false ,onSelected: (value){}),
                    choicechip(text: 'Brown', selected: true, onSelected: (value){},),
                    choicechip(text: 'Red', selected: false, onSelected: (value){}),
                    choicechip(text: 'Black', selected: false ,onSelected: (value){}),
              ],)
              
              
          ],),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Uza_SectionHeadinng(title: 'Sizes', showActionButton: false,),
              SizedBox(height: Uza_Sizes.spaceBtwItems /2),
              Wrap(
                spacing: 8,
                children: [
                  choicechip(text: 'EU 34', selected: true,),
                  choicechip(text: 'EU 36', selected: false,),
                  choicechip(text: 'EU 38', selected: false,),
                  choicechip(text: 'EU 39', selected: false,),
                  choicechip(text: 'EU 40', selected: false,),
                  choicechip(text: 'EU 41', selected: false,),
                  choicechip(text: 'EU 42', selected: false,),
                  choicechip(text: 'EU 43', selected: false,),
                  choicechip(text: 'EU 44', selected: false,),
              ],)
              
          ],),


      ]


    );
  }
}

