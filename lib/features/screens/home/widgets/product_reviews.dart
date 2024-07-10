import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uza_/common/widgets/appbar/appbar.dart';
import 'package:uza_/features/screens/home/widgets/overalprogressrating.dart';
import 'package:uza_/features/screens/home/widgets/progress_indicator.dart';
import 'package:uza_/features/screens/home/widgets/rating_indicator.dart';
import 'package:uza_/features/screens/home/widgets/user_review.dart';
import 'package:uza_/utils/device/device_utility.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const UzaCustomAppbar(title: Text('Reviews & Ratings'), showBackArrow: true,) ,
      

      // -- Body


      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(Uza_Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings and reviews are verified and are from people who use the same type of products you want to purchase"),
              const SizedBox(height: Uza_Sizes.spaceBtwItems),


              // -- Overall Product Ratings
              const OverallProductRating(),
              const UzaBarRatingIndicator(rating: 3.5,),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: Uza_Sizes.spaceBtwwnSections),

              // User Review List 

              const UserReviewCard(),
              const UserReviewCard()
            ],
          )
          ),
          
          
          )
      
      
      );
  }
}


