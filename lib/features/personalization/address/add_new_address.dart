import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/widgets/appbar/appbar.dart';

import '../../../utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const UzaCustomAppbar( showBackArrow: true, title: Text('Add New Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(Uza_Sizes.defaultSpace), 
          // -- Form for Input 
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText : 'Name'),),
                const SizedBox(height: Uza_Sizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText : 'Phone Number'),),
                const SizedBox(height: Uza_Sizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText : 'Street'),)),
                    const SizedBox(width: Uza_Sizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code), labelText : 'Postal Code'),)),
                  ],
                ),
                const SizedBox(height: Uza_Sizes.spaceBtwInputFields),
                 Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText : 'City'),)),
                    const SizedBox(width: Uza_Sizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText : 'State'),)),
                  ],
                ),
                const SizedBox(height: Uza_Sizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country')),
                const SizedBox(height: Uza_Sizes.defaultSpace),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Save'))),
                

              ],
              
              ),
          ) )
      )
    );
  }
}