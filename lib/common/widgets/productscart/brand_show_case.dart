import 'package:flutter/material.dart';
import 'package:uza_/common/styles/rounded_container.dart';
import 'package:uza_/features/store/brand_card.dart';
import 'package:uza_/utils/constants/colors.dart';
import 'package:uza_/utils/constants/sizes.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

class UzaBrandShowcase extends StatelessWidget {
  const UzaBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return UzaRoundedContainer(
      showBorder: true,
      borderColor: Uza_Colors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(Uza_Sizes.md),
      margin:  const EdgeInsets.only(bottom: Uza_Sizes.spaceBtwItems),
      child: Column(
        children : [
          // Brand  with Products Count 
          const BrandCard(showBorder: false),
          const SizedBox(height: Uza_Sizes.spaceBtwItems),
    
          // Brand Top 3 Product Images 
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
            ,
            )
        ]
      ),
    );
  }
  Widget brandTopProductImageWidget(String image, BuildContext context) {
  return Expanded(
    child: UzaRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(Uza_Sizes.md),
      margin: const EdgeInsets.only(right: Uza_Sizes.sm),
      backgroundColor: Uza_HelperFun.isDarkMode(context) ? Uza_Colors.darkGrey : Uza_Colors.light,
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}

  

}