
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/device/device_utility.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key, 
    required this.text, 
    required this.value,
  });

  // -- Initiate Variables 
  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text(text, style: Theme.of(context).textTheme.bodyMedium)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: Uza_DeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11, 
              backgroundColor: Uza_Colors.grey,
              valueColor: const AlwaysStoppedAnimation(Uza_Colors.primary),
              borderRadius: BorderRadius.circular(7),
              
              
            ),
          ),
        )
      ],);
  }
}