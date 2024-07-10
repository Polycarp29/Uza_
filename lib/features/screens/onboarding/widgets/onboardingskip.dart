import 'package:flutter/material.dart';
import 'package:uza_/features/authentication/controllers/onboarding.controller.dart';
import 'package:uza_/utils/constants/sizes.dart';
import 'package:uza_/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Uza_DeviceUtils.getAppBarHeight(),
      right: Uza_Sizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
        )
    
    
    );
  }
}