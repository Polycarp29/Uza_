import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/widgets/productscart/brand_text_title.dart';
import 'package:uza_/utils/constants/enums.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class BrandTitleTextVerified extends StatelessWidget {
  const BrandTitleTextVerified({
    super.key, 
    required this.title, 
    this.maxLines = 1, 
    this.textColor, 
    this.iconColor = Uza_Colors.primary, 
    this.textAlign = TextAlign.center, 
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,

          )
          ),
        const SizedBox(width: Uza_Sizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: Uza_Sizes.iconXs),
      ],);
  }
}