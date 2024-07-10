import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/features/personalization/profile_setting.dart';
import 'package:uza_/features/screens/home/widgets/home.dart';
import 'package:uza_/features/screens/wishlist/wishlist.dart';
import 'package:uza_/features/store/wallet/wallet.dart';
import 'package:uza_/utils/constants/colors.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import 'features/store/store.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    // Initiate the darkmode theme 
    final darkMode = Uza_HelperFun.isDarkMode(context);
    return Scaffold(  
      // Because the Navigation Button is Itended to e created Scaffold has the properties
      //Bottom Navigation Bar Property 
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? Uza_Colors.black: Colors.white,
          indicatorColor: darkMode ? Uza_Colors.white.withOpacity(0.1): Uza_Colors.black.withOpacity(0.1),
          
        
          destinations: const[
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(Iconsax.wallet),label: 'Wallet'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),],
        ),
      ), 
      body: Obx(() => controller.screen[controller.selectedIndex.value]),

    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screen = [const HomeScreen(), const Store(), const CryptoPesa(), const FavouriteScreen(), const SettingsScreen(),];
  }
