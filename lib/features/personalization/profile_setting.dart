import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/widgets/appbar/appbar.dart';
import 'package:uza_/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:uza_/features/personalization/views/profile.dart';
import 'package:uza_/features/screens/onboarding/widgets/commontexts/texts/section_heading.dart';
import 'package:uza_/features/store/wallet/wallet.dart';
import 'package:uza_/utils/constants/colors.dart';
import 'package:uza_/utils/constants/sizes.dart';

import '../../common/styles/list_styles/settings_menu_tile.dart';
import '../../common/styles/list_styles/user_profile.dart';
import 'address/address.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      // Make the body scrollable
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header 
            UzaPrimaryHeaderContainer(child: Column(
              children: [
                UzaCustomAppbar(
                  title: Text('Account Profile', style:Theme.of(context).textTheme.headlineMedium!.apply(color: Uza_Colors.white),

                  ), 
                  
                ), 
                const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

                // -- User Profile Card

                UzaUserProfile(onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

              ],)),

            // -- Body

            Padding(
              padding: const EdgeInsets.all(Uza_Sizes.defaultSpace),
              child: Column(
                children: [
                  // - Account Settings 
                  const Uza_SectionHeadinng(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: Uza_Sizes.spaceBtwItems),


                // -- Details 
                  SettingMenuTitle(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),

                  SettingMenuTitle(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    onTap: (){},
                  ),

                  SettingMenuTitle(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders',
                    onTap: (){},
                  ),

                  SettingMenuTitle(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                    onTap: (){},
                  ),
                  SettingMenuTitle(
                    icon: Iconsax.wallet,
                    title: 'Wallet',
                    subtitle: 'Check your wallet balance',
                    onTap: () => Get.to(() => const CryptoPesa()),
                  ),
                  SettingMenuTitle(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted Coupons',
                    onTap: (){},
                  ),
                  SettingMenuTitle(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message',
                    onTap: (){},
                  ),
                  SettingMenuTitle(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Secure your account, 2FA',
                    onTap: (){},
                  ),

                  // -- App Settings

                  const SizedBox(height: Uza_Sizes.spaceBtwwnSections),
                  const Uza_SectionHeadinng(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: Uza_Sizes.spaceBtwItems),
                  const SettingMenuTitle(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload Data to your Cloud Firebase'),

                  SettingMenuTitle(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on your location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingMenuTitle(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                   SettingMenuTitle(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set Image Quality for effective display',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ), 

                  // -- Logout Button 

                  const SizedBox(height: Uza_Sizes.spaceBtwwnSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  // -- Create space after button

                  const SizedBox(height: Uza_Sizes.spaceBtwwnSections * 2.5),

                ],)
              )
          ]) 
          
          ,)
    );
  }
}

