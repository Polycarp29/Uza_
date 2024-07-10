import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/styles/spacing_styles.dart';
import 'package:uza_/features/screens/password_conf/forgot_password.dart';
import 'package:uza_/features/screens/signup/signup.dart';
import 'package:uza_/navigation_menu.dart';
import 'package:uza_/utils/constants/colors.dart';
import 'package:uza_/utils/constants/image_strings.dart';
import 'package:uza_/utils/constants/sizes.dart';
import 'package:uza_/utils/constants/text_strings.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Uza_HelperFun.isDarkMode(context);

    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: UzaSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
                 // Logo, Title $ Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image:AssetImage(dark ?  Uza_ImageStrings.lightAppLogo: Uza_ImageStrings.darkAppLogo),
                  ),
                  Text(Uza_Text.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: Uza_Sizes.sm),
                  Text(Uza_Text.loginsubTitle, style: Theme.of(context).textTheme.bodyMedium),
                  

                ]

              ),
              

              /// Login Form 
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: Uza_Sizes.spaceBtwwnSections),
              child: Column(
              
              children: [
              ///
              ///Email Input Form
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: Uza_Text.email

                ),
              ),
              const SizedBox(height: Uza_Sizes.spaceBtwInputFields),

              //Password

              TextFormField(
              obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: Uza_Text.password, 
                  suffixIcon: Icon(Iconsax.eye_slash))
              ),
              const SizedBox(height: Uza_Sizes.spaceBtwInputFields / 2),

              /// Remember Me & Forget Password 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  /// Remember Me 
                  Row (children: [
                    Checkbox(value: true, onChanged : (value){} ),
                    const Text(Uza_Text.rememberMe),
                  ],),
                  /// Forget Password 
                  TextButton(onPressed: () => Get.to(() => const ForgotPassword()), child: const Text(Uza_Text.forgotPassword),),

                ],
              ),
              const SizedBox(height: Uza_Sizes.spaceBtwInputFields),

              // Sign In Button FF

              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(Uza_Text.SignIn))),
              const SizedBox(height: Uza_Sizes.spaceBtwItems),

              //Create Account Button 

              SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()) , child: const Text(Uza_Text.createAccount))),




            ],))),

            // Divider 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Flexible(child: Divider(color: dark ? Uza_Colors.darkGrey: Uza_Colors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
               Text(Uza_Text.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
               Flexible(child: Divider(color: dark ? Uza_Colors.darkGrey: Uza_Colors.grey, thickness: 0.5, indent: 5, endIndent: 60,)),
              ],
            ),
            const SizedBox(height: Uza_Sizes.spaceBtwwnSections),
            /// Footer 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Uza_Colors.grey),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Image(
                      width: Uza_Sizes.iconMd,
                      height: Uza_Sizes.iconMd,
                      image: AssetImage(Uza_ImageStrings.google),
                    ),
                  ),
                ),
                const SizedBox(height: Uza_Sizes.spaceBtwItems), 
                // adds some spaces 

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Uza_Colors.grey),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Image(
                      width: Uza_Sizes.iconMd,
                      height: Uza_Sizes.iconMd,
                      image: AssetImage(Uza_ImageStrings.facebook),
                    ),
                  ),
                ),
                
              ],
            ),

            ]
            /// Logo and Subtitle 
            
          ),
          ),
        )
      );

  }
}

