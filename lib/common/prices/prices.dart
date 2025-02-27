import 'package:flutter/material.dart';

class UzaProductPrice extends StatelessWidget {
  const UzaProductPrice({
    super.key, 
    this.currencySign = 'KES',  // add your required currency 
    required this.price, 
    this.maxLines = 1, 
    this.isLarge = false, 

    });
    final String currencySign, price;
    final int maxLines;
    final bool isLarge;
    final bool lineThrough = false;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
        ? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough? TextDecoration.lineThrough: null)
        : Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough? TextDecoration.lineThrough: null),

    );
  }
}