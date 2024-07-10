import 'package:flutter/material.dart';
import 'package:uza_/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:uza_/utils/constants/colors.dart';

import '../curved_edges/curved_edged_widget.dart';

class UzaPrimaryHeaderContainer extends StatelessWidget {
  const UzaPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return UzaCurvedWidget(
      child: SizedBox(
        child: Container(
          color: Uza_Colors.primary,
        child: Stack(
          children:[
            Positioned(top: -150, right: -250, child: UzaWidgetContainer(backgroundColor: Uza_Colors.textWhite.withOpacity(0.1))),
            Positioned(top: 100, right: -300, child: UzaWidgetContainer(backgroundColor: Uza_Colors.textWhite.withOpacity(0.1),),),
            child,


          ]
        )


        )
      )
    );
      
            
         
  }
}
