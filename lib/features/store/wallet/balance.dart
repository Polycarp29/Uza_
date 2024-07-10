import 'package:flutter/material.dart';

import '../../../common/styles/rounded_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';


class CardBalance extends StatelessWidget {
  const CardBalance({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Uza_HelperFun.isDarkMode(context);
    return  UzaRoundedContainer(
      backgroundColor: dark? Uza_Colors.dark : Uza_Colors.darkGrey,
          child: Padding(padding: EdgeInsets.all(Uza_Sizes.md),
          child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: Uza_Sizes.spaceBtwwnSections * 4),
                    Text("Balance :", style: Theme.of(context).textTheme.bodyLarge),
                    Text(' KES 30000', style: Theme.of(context).textTheme.bodyMedium),
                  ],)
              ]),

    ));
            
  }
}