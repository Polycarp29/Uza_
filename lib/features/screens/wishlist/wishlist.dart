import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/layouts/grid_layout.dart';
import 'package:uza_/common/widgets/appbar/appbar.dart';
import 'package:uza_/common/widgets/icons/circularicons.dart';
import 'package:uza_/common/widgets/productscart/product_card_horizontal.dart';
import 'package:uza_/features/screens/home/widgets/home.dart';

import '../../../utils/constants/sizes.dart';

// -- Create a stateless widget 

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: UzaCustomAppbar(
        // Create Title: 
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          UzaCircularIcon(icon: Iconsax.add, onPressed : () => Get.to(const HomeScreen())),
        ]
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Uza_Sizes.defaultSpace),
          child: Column(
            children: [
              Uzagridlayout(itemCount: 4, itemBuilder:(_, index) => const Uza_ProductCardvertical() )
            ],)
          
          )
      ) ,

    );
  }
}