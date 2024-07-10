import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uza_/common/styles/spacing_styles.dart';
import 'package:uza_/features/screens/login/login.dart';
import 'package:uza_/utils/constants/image_strings.dart';
import 'package:uza_/utils/constants/sizes.dart';
import 'package:uza_/utils/constants/text_strings.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';



class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: UzaSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(Uza_ImageStrings.esuccess),
                width: Uza_HelperFun.ScreenWidth() * 0.6,
              ),
              const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

              // Title & SubTitles 
            Text(Uza_Text.yourAccountCreatedTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: Uza_Sizes.spaceBtwItems),
            Text(Uza_Text.yourAccountCreatedSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

            // Button 

            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const LoginScreen()), child: const Text('Continue'))),
            const SizedBox(height: Uza_Sizes.spaceBtwItems),
            
            ],
          ),
        ),
      ),
    );
  }
}
