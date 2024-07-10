import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/widgets/appbar/appbar.dart';
import 'package:uza_/common/widgets/image_text/uza_Circularimage.dart';
import 'package:uza_/features/personalization/views/profile_menu.dart';
import 'package:uza_/features/screens/onboarding/widgets/commontexts/texts/section_heading.dart';
import 'package:uza_/utils/constants/image_strings.dart';

import '../../../utils/constants/sizes.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const UzaCustomAppbar(
        showBackArrow: true,
        title: Text('Profile Info.'),
      ),
     // -- Body 

     body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Uza_Sizes.defaultSpace),
        child: Column(
          children: [
            // -- Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
              children: [
                const UzaCircularImage(image: Uza_ImageStrings.user, width: 80, height: 80),
                TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
              ],),
            ),
            // -- Details 
            const SizedBox(height: Uza_Sizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: Uza_Sizes.spaceBtwItems),

            // -- Heading 
             const Uza_SectionHeadinng(title: 'Profile Information', showActionButton: false,),
             const SizedBox(height: Uza_Sizes.spaceBtwItems),
             ProfileMenu(onPressed: () {}, title: 'Name', value: 'Poltech Solutions',),
             ProfileMenu(onPressed: () {}, title: 'Name', value: 'Poltech Solutions',),
             const Divider(),
             const SizedBox(height: Uza_Sizes.spaceBtwItems),
             const Uza_SectionHeadinng(title: 'Personal Information', showActionButton: false,),
             const SizedBox(height: Uza_Sizes.spaceBtwItems),
             // -- Heading Personal Info

             ProfileMenu(onPressed: () {}, title: 'User_ID', value: '467990x',icon: Iconsax.copy),
             ProfileMenu(onPressed: () {}, title: 'E-Mail', value: 'support@poltechsolutions.com',),
             ProfileMenu(onPressed: () {}, title: 'Phone Number', value: '+1(560)7890675',),
             ProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male',),
             ProfileMenu(onPressed: () {}, title: 'Date Of Birth', value: '10 Oct 1999',),

             const Divider(),
             const SizedBox(height: Uza_Sizes.spaceBtwItems),

             Center(
              child: TextButton(onPressed: (){}, 
              child: const Text('Delete Account', style: TextStyle(color: Colors.red)) ),)

             

          ],
          
          )
        )
     )


    );
  }
}

