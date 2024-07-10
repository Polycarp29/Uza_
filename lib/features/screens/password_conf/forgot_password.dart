import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/features/screens/password_conf/reset_password.dart';
import 'package:uza_/utils/constants/sizes.dart';
import 'package:uza_/utils/constants/text_strings.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Uza_Sizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              Uza_Text.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Uza_Sizes.spaceBtwItems),
            Text(
              Uza_Text.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Uza_Sizes.spaceBtwwnSections * 2),
            

            // Text feild 

            TextFormField(
              decoration: const InputDecoration(labelText: Uza_Text.email, prefixIcon: Icon(Iconsax.direct_right),
           
              )
            ),
             const SizedBox(height: Uza_Sizes.spaceBtwwnSections),
            // Submit Button

            SizedBox( width: double.infinity, child: ElevatedButton(onPressed: () => Get.offAll(() => const ResetPassword()) , child: const Text("Submit")))
                
          ],
        ),
      ),
    );
  }
}





