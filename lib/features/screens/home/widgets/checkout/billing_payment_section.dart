import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
       children:[
        /// SubTotal 
        Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\KES 3500.0', style: Theme.of(context).textTheme.bodyMedium),


          ],),
          const SizedBox(height: Uza_Sizes.spaceBtwItems / 2),

          // Shipping Fee

           Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\KES 200.0', style: Theme.of(context).textTheme.labelLarge),



          ],),

          const SizedBox(height: Uza_Sizes.spaceBtwItems / 2),

          // Shipping Fee

           Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\KES 75.0', style: Theme.of(context).textTheme.labelLarge),
            


          ],),
          
      ]
    );
  }
}