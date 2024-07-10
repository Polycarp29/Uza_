import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uza_/features/screens/login/login.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../../utils/constants/sizes.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Uza_Sizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(Uza_ImageStrings.reset),
                width: Uza_HelperFun.ScreenWidth() * 0.6,
              ),
              const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

              // Title & Subtitles
              Text(Uza_Text.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: Uza_Sizes.spaceBtwItems),
              Text(Uza_Text.changeYourPasswordSubTtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text('Done'),
                ),
              ),
              const SizedBox(height: Uza_Sizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Resend Email'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
