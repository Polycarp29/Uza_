import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../styles/rounded_container.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark  =  Uza_HelperFun.isDarkMode(context);
    return UzaRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? Uza_Colors.dark: Uza_Colors.white,
      padding: const EdgeInsets.only(top: Uza_Sizes.sm, bottom: Uza_Sizes.sm, right: Uza_Sizes.sm, left: Uza_Sizes.md),
      child: Row(
        children: [
    
          // Text Field with hidden border
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code ? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
    
              )
            ),
          ), 
          // Button 
          SizedBox(
           width: 80,
           child: ElevatedButton(onPressed: (){}, 
           style: ElevatedButton.styleFrom(
            foregroundColor: dark ? Uza_Colors.white.withOpacity(0.5): Uza_Colors.dark.withOpacity(0.5),
            backgroundColor: Colors.grey.withOpacity(0.2),
            side: BorderSide(color: Colors.grey.withOpacity(0.1)),
            
            ), 
           child:  const Text('Apply', )))
        ],)
    
    );
  }
}