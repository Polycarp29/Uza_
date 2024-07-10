import 'package:flutter/material.dart';
import 'package:uza_/utils/constants/sizes.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });
  final String image,title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Uza_Sizes.defaultSpace), // Fix typo in EdgeInsets.all
      child: Column(
        children: [
          Image(
            width: Uza_HelperFun.ScreenWidth() * 0.8, // Fix typo in Uza_HelperFun.ScreenWidth
            height: Uza_HelperFun.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Uza_Sizes.spaceBtwItems),
    
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
