import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uza_/common/widgets/success_screen/sucess_screen.dart';
import 'package:uza_/features/screens/login/login.dart';
import 'package:uza_/utils/constants/image_strings.dart';
import 'package:uza_/utils/constants/sizes.dart';
import 'package:uza_/utils/constants/text_strings.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(

        //Padding to give default equal space for all sides in all screens
        child: Padding(
          padding: const EdgeInsets.all(Uza_Sizes.defaultSpace),
          child: Column(
            children: [
              //Image
            Image(image: const AssetImage(Uza_ImageStrings.onBoardingImage4), width: Uza_HelperFun.ScreenWidth() * 0.6),
            const SizedBox(height: Uza_Sizes.spaceBtwwnSections),
              //Title & Subtitle
            Text(Uza_Text.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: Uza_Sizes.spaceBtwItems),
            Text('support@uzashopping.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
            const SizedBox(height: Uza_Sizes.spaceBtwItems),
            Text(Uza_Text.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

              //Buttons
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const SuccessScreen()), child: const Text('Continue'))),
            const SizedBox(height: Uza_Sizes.spaceBtwItems),
            SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(Uza_Text.resendEmail))),
              
            ],)
        )
      )
    );
  }
}