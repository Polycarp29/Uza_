// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/widgets/appbar/appbar.dart';
import 'package:uza_/features/personalization/address/add_new_address.dart';
import 'package:uza_/features/personalization/address/single_address.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Uza_Colors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color: Uza_Colors.white),

        ),
        appBar:  UzaCustomAppbar(
          showBackArrow: true,
          title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
          ), 
          body: const SingleChildScrollView(
            child: Padding(padding: EdgeInsets.all(Uza_Sizes.defaultSpace),
            child: Column(
              children: [
                SingleAddress(selectedAddress: true),
                SingleAddress(selectedAddress: false),
                SingleAddress(selectedAddress: false),
                SingleAddress(selectedAddress: false),
              ]
            )
            ), 
          ),
        
    );
  }
}