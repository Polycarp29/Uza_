import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../common/styles/rounded_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({
  super.key, 
  required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = Uza_HelperFun.isDarkMode(context);
    return UzaRoundedContainer(
      padding: const EdgeInsets.all(Uza_Sizes.md),
                  width: double.infinity,
                  showBorder: true,
                  backgroundColor: selectedAddress ?  Uza_Colors.primary.withOpacity(0.5) : Colors.transparent,
                  borderColor: selectedAddress ? Colors.transparent : dark ?  Uza_Colors.darkGrey : Uza_Colors.grey,
                  margin:  const EdgeInsets.only(bottom:  Uza_Sizes.spaceBtwItems),
                  child: Stack(
                    children : [
                      Positioned(
                        right: 5, 
                        top : 0 , 
                        child: Icon(
                          selectedAddress ? Iconsax.tick_circle5 : null,
                          color: selectedAddress ? dark ? Uza_Colors.light : Uza_Colors.dark : null,
                        ),
                      ), 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: Uza_Sizes.sm /2 ),
                          const Text('(+254) 722011710', maxLines: 1, overflow: TextOverflow.ellipsis),
                          const SizedBox(height:Uza_Sizes.sm / 2),
                          Text(
                            'P. O Box 2784 - NAKURU GPO 20100 NAKURU KENYA',
                            maxLines: 1, 
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.titleLarge,
                            softWrap: true
                          ),
                        ],)
                    ]
                  )
                );
  }
}