import 'package:flutter/material.dart';
import 'package:uza_/common/layouts/grid_layout.dart';
import 'package:uza_/common/styles/rounded_container.dart';
import 'package:uza_/common/widgets/appbar/appbar.dart';
import 'package:uza_/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:uza_/common/widgets/productscart/cart_menu_icon.dart';
import 'package:uza_/features/screens/home/widgets/tab_bar.dart';
import 'package:uza_/features/store/category_tab..dart';
import 'package:uza_/utils/constants/image_strings.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../common/widgets/image_text/uza_Circularimage.dart';
import '../../common/widgets/productscart/brand_title_verified.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/enums.dart';
import '../../utils/constants/sizes.dart';
import '../screens/home/widgets/section_heading.dart';
class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
      
        
        // Create an AppBar
        appBar: UzaCustomAppbar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            UzaCartCountericon(onPressed: () {},
           
            ),
       
          ]
        ),
         body: NestedScrollView(headerSliverBuilder: (_, innerBoxisScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: Uza_HelperFun.isDarkMode(context)? Uza_Colors.black : Uza_Colors.white,
              expandedHeight: 440,
      
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(Uza_Sizes.defaultSpace),
                child : ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // Search Bar 
      
                    const SizedBox(height: Uza_Sizes.spaceBtwItems),
                    const UzaSearchContainer(text: '  Search in  Store', showBorder: true, showBackground: false , padding: EdgeInsets.zero),
                    const SizedBox(height: Uza_Sizes.spaceBtwwnSections),
      
                    // Featured Brands 
      
                  UzaHeadingSection(title: 'Featured Products', onPressed: (){}),
                  const SizedBox(height: Uza_Sizes.spaceBtwItems / 1.5),
      
                  Uzagridlayout(itemCount: 4, mainAxisExtent: 80 ,itemBuilder: (_, index) {
                    return 
                    // Custom Brands 
                  GestureDetector(
                    onTap: (){},
                    child: UzaRoundedContainer(
                      padding: const EdgeInsets.all(Uza_Sizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children:[
                          /// -- Icon 
                          Flexible(
                            child: UzaCircularImage(
                              isNetworkImage: false,
                              image: Uza_ImageStrings.nikebrand,
                              backgroundColor: Colors.transparent,
                              overlayColor: Uza_HelperFun.isDarkMode(context)? Uza_Colors.white : Uza_Colors.dark,
                                              
                              
                            ),
                          ), 
                          const SizedBox(width: Uza_Sizes.spaceBtwItems / 2),
                    
                          /// Text
                           Expanded(
                             child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const BrandTitleTextVerified(title: 'Nike', brandTextSize: TextSizes.large),
                                Text(
                                  '256  Available products',
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.labelMedium,
                                )
                              ],),
                           )
                          
                          
                        ]
                      ),
                    ),
                  );
                  })
                    
                  ]
                )
               ),
      
               // Tabs -- 
               bottom: const UzaCustTabBar(tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
               ]),
            )
          ];
         }, body: const TabBarView(
          children: [
            // Category Tab 
            UzaCategoryTab(),
            UzaCategoryTab(),
            UzaCategoryTab(),
            UzaCategoryTab(),
            UzaCategoryTab(),
         ],)
        
      ),
      
      )

    );
  }
}




