import 'package:flutter/material.dart';
import 'package:uza_/features/screens/home/widgets/addremovebtn.dart';
import 'package:uza_/features/screens/home/widgets/cart_menu_icon.dart';

import '../../../../common/prices/prices.dart';
import '../../../../utils/constants/sizes.dart';


class CartItems extends StatelessWidget {
  const CartItems({
    super.key, this.showAddRemoveButtons = true,
  });
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (_, __)=> const SizedBox(height: Uza_Sizes.spaceBtwwnSections), 
              itemCount: 2, 
              itemBuilder: (_, index)=>   Column(
                children: [
                  const UzaCardItem(),
                  if(showAddRemoveButtons) const SizedBox(height: Uza_Sizes.spaceBtwItems),
    
                  if(showAddRemoveButtons)const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // -- Create Extra Space
                          SizedBox(width: 70),
                           // Add and Remove Buttons 
    
                          ProductQuantitywithaddandremovebtn(),
                        ],
                      ),
                     
                      UzaProductPrice(price: ' 2500')
                      
    
    
    
                    ],),
                    
    
    
                ],));
  }
}