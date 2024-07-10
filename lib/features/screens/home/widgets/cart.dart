import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/prices/prices.dart';
import 'package:uza_/common/styles/rounded_image.dart';
import 'package:uza_/common/widgets/appbar/appbar.dart';
import 'package:uza_/common/widgets/icons/circularicons.dart';
import 'package:uza_/common/widgets/productscart/brand_title_verified.dart';
import 'package:uza_/features/screens/home/widgets/addremovebtn.dart';
import 'package:uza_/features/screens/home/widgets/cart_item.dart';
import 'package:uza_/features/screens/home/widgets/cart_menu_icon.dart';
import 'package:uza_/features/screens/home/widgets/checkout/checkout.dart';
import 'package:uza_/texts/section_heading.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: UzaCustomAppbar(
        showBackArrow: true,
        title: Text('Cart' , style : Theme.of(context).textTheme.headlineSmall)),
        body: const Padding(padding: EdgeInsets.all(Uza_Sizes.defaultSpace),
        child: CartItems()
        ),
          bottomNavigationBar:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () => Get.to(() =>const CheckoutScreens()), child: Text('Checkout \KES 2500')),
          ),
    );
  }
}





