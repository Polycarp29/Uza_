import 'package:flutter/material.dart';
import 'package:uza_/common/styles/rounded_container.dart';
import 'package:uza_/common/widgets/appbar/appbar.dart';
import 'package:uza_/features/screens/home/widgets/cart_item.dart';
import 'package:uza_/features/screens/home/widgets/checkout/billing_payment_section.dart';

import '../../../../../common/widgets/coupons/coupon_code.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class CheckoutScreens extends StatelessWidget {
  const CheckoutScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final dark  =  Uza_HelperFun.isDarkMode(context);
    return  Scaffold(
      appBar: UzaCustomAppbar(showBackArrow: true, title: Text('Order Review',style: Theme.of(context).textTheme.headlineSmall)),
      body:   SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Uza_Sizes.defaultSpace),
          child: Column(
            children: [
              const CartItems(showAddRemoveButtons: false),
              const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

              // Coupon TextField 
              const CouponCode(),
              const SizedBox(height: Uza_Sizes.spaceBtwwnSections),


              // -- Billing Section

              UzaRoundedContainer(
                showBorder: true,
                padding:  const EdgeInsets.all(Uza_Sizes.md),
                backgroundColor: dark ? Uza_Colors.black: Uza_Colors.white,
                child: const Column(
                  children: [

                    // Pricing 
                    BillingPaymentSection(),
                    SizedBox(height: Uza_Sizes.spaceBtwItems),


                    // Divider 
                    Divider(),
                    SizedBox(height: Uza_Sizes.spaceBtwItems),


                    // Payment Details


                    // Address
                  ],)
              )


              
            ],))
      )
    );
  }
}

