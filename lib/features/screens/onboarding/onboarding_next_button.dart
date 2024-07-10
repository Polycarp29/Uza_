import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/features/authentication/controllers/onboarding.controller.dart';
import 'package:uza_/utils/constants/colors.dart';
import 'package:uza_/utils/constants/sizes.dart';
import 'package:uza_/utils/device/device_utility.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Uza_HelperFun.isDarkMode(context);
    return Positioned(
      right:Uza_Sizes.defaultSpace,
      bottom:Uza_DeviceUtils.getBottomNavigationBarHeight(),
      
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? Uza_Colors.primary: Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ));
  }
}
