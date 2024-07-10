
import 'package:flutter/material.dart';

import '../../../../common/widgets/image_text/vertical_imagetext.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return  Uza_ImageText(image: Uza_ImageStrings.shoeIcon, title: 'Shoes', onTap: (){}) ;
        },),
    );
  }
}
