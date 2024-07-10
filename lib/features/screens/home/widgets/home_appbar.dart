import 'package:flutter/material.dart';
import 'package:uza_/common/widgets/productscart/cart_menu_icon.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';

class UzaHomeAppBar extends StatelessWidget {
  const UzaHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UzaCustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Uza_Text.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: Uza_Colors.softGrey)), 
        Text(Uza_Text.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: Uza_Colors.white)),
      ],
      
      ),
                actions: [
                UzaCartCountericon(onPressed: (){}, iconColor: Uza_Colors.white),// Cart Icon Function
    
              ]
      );
  }
}