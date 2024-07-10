
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uza_/features/authentication/controllers/onboarding.controller.dart';
import 'package:uza_/features/screens/onboarding/onboarding_next_button.dart';
import 'package:uza_/features/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:uza_/features/screens/onboarding/widgets/onboarding_page.dart';
import 'package:uza_/features/screens/onboarding/widgets/onboardingskip.dart';
import 'package:uza_/utils/constants/image_strings.dart';
import 'package:uza_/utils/constants/text_strings.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return  Scaffold(
      body: Stack(
        children: [

          // Horizontal Scrollable Pages 
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image:Uza_ImageStrings.
              onBoardingImage1, 
              title: Uza_Text.onBoardingSubTitle1,
              subTitle: Uza_Text.onBoardingSubTitle1),

              OnBoardingPage(
              image:Uza_ImageStrings.
              onBoardingImage2, 
              title: Uza_Text.onBoardingSubTitle2,
              subTitle: Uza_Text.onBoardingSubTitle2),


              OnBoardingPage(
              image:Uza_ImageStrings.
              onBoardingImage3, 
              title: Uza_Text.onBoardingSubTitle3,
              subTitle: Uza_Text.onBoardingSubTitle3),

          ],
),

          // SKip Button 
        const OnBoardingSkip(),

        
          /// Dot Navigation SmoothPage Indicator 
        const OnBoardingDotNavigation(),

          /// Circular Button
          /// 
        const OnBoardingNextButton(),
        ]
      )
    );
  }
}






