
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uza_/features/store/controllers/home_controllers.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_containers.dart';
import '../../../../common/widgets/image_text/roundedimage.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class PromoSlides extends StatelessWidget {
  const PromoSlides({
    super.key, required this.banners,
  });

  // Create a list of strings 

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            // Updates the page once the slides are moved.
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
        
          ),
          items: banners.map((url) =>  BorderRoundedImage(imageurl: url)).toList()),

           const SizedBox(height: Uza_Sizes.spaceBtwItems),
        // Wrap with a center widget to enable the sliders be at the center 
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i < banners.length; i++) 
                 UzaWidgetContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? Uza_Colors.primary: Uza_Colors.darkGrey,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
       
}