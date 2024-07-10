import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:uza_/common/styles/rounded_container.dart';
import 'package:uza_/features/screens/home/widgets/rating_indicator.dart';
import 'package:uza_/utils/constants/image_strings.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Uza_HelperFun.isDarkMode(context);
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              const CircleAvatar(backgroundImage: AssetImage(Uza_ImageStrings.user),
              ),
              const SizedBox(width: Uza_Sizes.spaceBtwItems),
              Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
            
            ],),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ), 
            const SizedBox(height: Uza_Sizes.spaceBtwItems),

            // -- Review 
        Row(
          children: [
            const UzaBarRatingIndicator(
              rating: 4.0,
            ),
            const SizedBox(width: Uza_Sizes.spaceBtwItems),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium)
          ],),

          const SizedBox(height: Uza_Sizes.spaceBtwItems),
          const ReadMoreText(
            'The User Interface of this application is quite interactive and user-friendly. I was able to navigate and make purchases seamlessly. Great Job ',
            trimLines: 2, 
            trimMode: TrimMode.Line,
            trimExpandedText: 'Show Less', 
            trimCollapsedText: ' Show More',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Uza_Colors.primary ),
            lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Uza_Colors.primary),
          ),
          const SizedBox(height: Uza_Sizes.spaceBtwItems),
          
          // -- Company Review
          // Create a Card
          UzaRoundedContainer(
            backgroundColor: dark? Uza_Colors.dark : Uza_Colors.darkGrey,
            child: Padding(padding: EdgeInsets.all(Uza_Sizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Uza's Store", style: Theme.of(context).textTheme.bodyLarge),
                    Text(' 01 Feb, 2024', style: Theme.of(context).textTheme.bodyMedium),
                  ],),
                   const SizedBox(height: Uza_Sizes.spaceBtwItems),
                      const ReadMoreText(
                        'The User Interface of this application is quite interactive and user-friendly. I was able to navigate and make purchases seamlessly. Great Job ',
                        trimLines: 2, 
                        trimMode: TrimMode.Line,
                        trimExpandedText: 'Show Less', 
                        trimCollapsedText: ' Show More',
                        moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Uza_Colors.primary ),
                        lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Uza_Colors.primary),
                      ),

                      // -- Additional Reviews 
              ]),
            
            )

          )
            
      ]
    );
  }
}