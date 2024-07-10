import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class RatingsandShare extends StatelessWidget {
  const RatingsandShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // -- Rating 
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size:24),
            // -- Create spacing 
            const SizedBox(width: Uza_Sizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    children: [
                      TextSpan(text: '5.0', style: Theme.of(context).textTheme.bodyLarge), 
                      const TextSpan(text: '(199)'),
    
                    ] )
                ]
                 )
            )
          ],),
        // -- Share Button 
        IconButton(onPressed: (){}, icon: const Icon(Icons.share, size: Uza_Sizes.iconMd)),
    
    
      ],);
  }
}