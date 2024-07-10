import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uza_/features/authentication/controllers/onboarding.controller.dart';
import 'package:uza_/utils/constants/colors.dart';
import 'package:uza_/utils/device/device_utility.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';


class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = Uza_HelperFun.isDarkMode(context);
    return Positioned(
      bottom: Uza_DeviceUtils.getBottomNavigationBarHeight() +25,
      left: Uza_Sizes.defaultSpace,
      
      child: SmoothPageIndicator(
              controller: controller.pageController, 
              count: 3,
              onDotClicked: controller.dotNavigationClick,
              effect: ExpandingDotsEffect(activeDotColor: dark ? Uza_Colors.light: Uza_Colors.dark, dotHeight: 6),
      
      ),
    
    );
  }
}