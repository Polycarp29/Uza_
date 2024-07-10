import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class BillingSectionAddress extends StatelessWidget {
  const BillingSectionAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        /// SubTotal 
        Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('KES3500.00', style: Theme.of(context).textTheme.bodyMedium),


          ],), 
          const SizedBox(height: Uza_Sizes.spaceBtwItems / 2)
      ]
    );
  }
}