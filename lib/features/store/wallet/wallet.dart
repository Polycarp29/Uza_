import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/widgets/appbar/appbar.dart';
import 'package:uza_/features/store/wallet/balance.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/image_text/uza_Circularimage.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import 'package:u_credit_card/u_credit_card.dart';

import '../../screens/onboarding/widgets/commontexts/texts/section_heading.dart';

class CryptoPesa extends StatelessWidget {
  const CryptoPesa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header 
            UzaPrimaryHeaderContainer(child: Column(
              children: [
                UzaCustomAppbar(
                  title: Text('Your Wallet', textAlign: TextAlign.left, style:Theme.of(context).textTheme.headlineMedium!.apply(color: Uza_Colors.white,),

                  ), 
                  
                ), 
                const SizedBox(height: Uza_Sizes.spaceBtwwnSections / 8),

                // -- User Profile Card

                ListTile(
                    leading: const UzaCircularImage(
                      image: Uza_ImageStrings.user,
                      width: 20,
                      height: 20,
                      padding: 0,
                    ),
                      title: Text('Poltech Solutions', style: Theme.of(context).textTheme.headlineSmall!.apply(color:Uza_Colors.white)),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.notification, color: Uza_Colors.white)),
                       
                      
                          ),
                  // Display Balance
                const SizedBox(height: Uza_Sizes.spaceBtwwnSections),
                // -- Balance Card
                const CardBalance(),

                const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

              ],),
              ),

               const Padding(
                padding: EdgeInsets.all(Uza_Sizes.defaultSpace),
                child: Column(
                children: [
                  CreditCardUi(cardHolderFullName:'Poltech Solutions', cardNumber: '123456789123456', validThru: '10/25'),
                  SizedBox(height: Uza_Sizes.spaceBtwItems),

                  Uza_SectionHeadinng(title: 'Recent Transactions', showActionButton: false,),
                  SizedBox(height: Uza_Sizes.spaceBtwItems),


                  // -- withdraw and deposit button

                  
                ]
                ),
                
                
           )


          ]
            
      )
      )
      
      );
  }
}