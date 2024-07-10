import 'package:flutter/material.dart';
import 'package:uza_/common/styles/rounded_container.dart';
import 'package:uza_/common/widgets/image_text/uza_Circularimage.dart';
import 'package:uza_/common/widgets/productscart/brand_title_verified.dart';
import 'package:uza_/utils/constants/image_strings.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/enums.dart';
import '../../utils/constants/sizes.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // Init --- Var

    final isDark = Uza_HelperFun.isDarkMode(context);
    return GestureDetector(
      onTap : onTap,
// Container Design 
      child: UzaRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding : const EdgeInsets.all(Uza_Sizes.sm),
        child : Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             // Create Icons absed on images 

             Flexible(
              child: UzaCircularImage(
                isNetworkImage: false,
                image: Uza_ImageStrings.shoeIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? Uza_Colors.white : Uza_Colors.dark,
                ) ,),
            // Create a spacing 

            const SizedBox(width: Uza_Sizes.spaceBtwItems / 2),

            // Texts

            Expanded(
              child: Column(
                mainAxisSize : MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const BrandTitleTextVerified(title: 'Nike', brandTextSize: TextSizes.large),
                  Text(
                    '25 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,


                    )

                ]

                
              ) ,)


          ]
        )
      )

    );
  }
}