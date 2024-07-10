import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/features/screens/signup/verify_email.dart';
import 'package:uza_/utils/constants/colors.dart';
import 'package:uza_/utils/constants/image_strings.dart';
import 'package:uza_/utils/constants/sizes.dart';
import 'package:uza_/utils/constants/text_strings.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Uza_HelperFun.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Uza_Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title 
              Text(Uza_Text.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height:Uza_Sizes.spaceBtwwnSections),


              /// Form
              Form(child: Column(
                children:[
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(labelText: Uza_Text.firstname,prefixIcon: Icon(Iconsax.user)
                          )
                        ),
                      ),
                      const SizedBox(width:Uza_Sizes.spaceBtwInputFields),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(labelText: Uza_Text.lastname,prefixIcon: Icon(Iconsax.user)
                          )
                        ),
                      ),

                    ],),

                    const SizedBox(height:Uza_Sizes.spaceBtwInputFields),
                    // Username 
                    TextFormField(
                          expands: false,
                          decoration: const InputDecoration(labelText: Uza_Text.username,prefixIcon: Icon(Iconsax.user_edit)
                          )
                        ),

                    const SizedBox(height:Uza_Sizes.spaceBtwInputFields),
                    // Email 
                    TextFormField(
                          expands: false,
                          decoration: const InputDecoration(labelText: Uza_Text.email,prefixIcon: Icon(Iconsax.direct)
                          )
                        ),

                    const SizedBox(height:Uza_Sizes.spaceBtwInputFields),

                    // Phone Number
                    TextFormField(
                          expands: false,
                          decoration: const InputDecoration(labelText: Uza_Text.phoneNo,prefixIcon: Icon(Iconsax.call)
                          )
                        ),
                    const SizedBox(height:Uza_Sizes.spaceBtwInputFields),
                    // Password 

                    TextFormField(
                        obscureText: true,
                          expands: false,
                          decoration: const InputDecoration(labelText: Uza_Text.password,prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash),
                          )
                        ),
                    const SizedBox(height:Uza_Sizes.spaceBtwInputFields),  

                    // Confirm Password 
                    TextFormField(
                        obscureText: true,
                          expands: false,
                          decoration: const InputDecoration(labelText: Uza_Text.cpassword,prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash),
                          )
                        ),
                    const SizedBox(height: Uza_Sizes.spaceBtwwnSections),
                    Row(
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(
                              value: true, // Replace with your actual value
                              onChanged: (value) {}, // Replace with your actual onChanged function
                            ),
                          ),
                  const SizedBox(width: Uza_Sizes.spaceBtwItems),
                  Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: Uza_Text.iAgreeTo, style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: ' ${Uza_Text.privacyPolicy} ',
                                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                                          color: dark ? Uza_Colors.white : Uza_Colors.primary,
                                          decoration: TextDecoration.underline,
                                          decorationColor: dark ? Uza_Colors.white : Uza_Colors.primary,
                                        ),
                                  ),
                                ],
                              ),
                              TextSpan(text: Uza_Text.and, style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(text: ' ${Uza_Text.TermsOfUse} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark ? Uza_Colors.white : Uza_Colors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark? Uza_Colors.white : Uza_Colors.primary )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Uza_Sizes.spaceBtwwnSections),
                  // Sign Up Bottom 
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(Uza_Text.createAccount))),

                 const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

                   
                ]
              )),

              //Divider

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

            ],)
          
          
          
          
          )
      ),
    );
  }
}