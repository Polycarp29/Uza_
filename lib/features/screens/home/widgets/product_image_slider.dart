import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../../common/styles/rounded_image.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edged_widget.dart';
import '../../../../common/widgets/icons/circularicons.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';


class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key
    
  });


  @override
  Widget build(BuildContext context) {
    final dark = Uza_HelperFun.isDarkMode(context);
    return UzaCurvedWidget(child: 
    Container(
      color: dark? Uza_Colors.darkGrey : Uza_Colors.light,
      child:  Stack(
        children: [
          // Main Large Image 
          const SizedBox(height: 300, child: Padding(
            padding: EdgeInsets.all(Uza_Sizes.productImageRadius * 2),
            child: Center(child: Image(image: AssetImage(Uza_ImageStrings.productImage1))),
          ),
          ),
          // -- Image Slider 
          Positioned(
            right: 0, 
            bottom: 30,
            left: Uza_Sizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (_, __) => const SizedBox(width: Uza_Sizes.spaceBtwItems),
                itemBuilder: (_, index) => RoundedImage(
                      width: 80,
                      backgroundColor: dark ? Uza_Colors.dark : Uza_Colors.white,
                      border: Border.all(color: Uza_Colors.primary),
                      imageurl:Uza_ImageStrings.greyclarks), 
                ),
            ),
          ),
          const UzaCustomAppbar(
            showBackArrow: true,
            actions: [
              UzaCircularIcon(icon: Iconsax.heart5, color: Colors.red)
            ]
          )
         
            
        ]
      )
    
    ) );
  }
}