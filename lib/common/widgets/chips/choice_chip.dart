import 'package:flutter/material.dart';
import 'package:uza_/common/styles/rounded_container.dart';
import 'package:uza_/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class choicechip extends StatelessWidget {
  const choicechip({
    super.key,
    required this.text, 
    required this.selected, 
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = Uza_HelperFun.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
      label: isColor ? const SizedBox() : Text(text), 
      selected: selected, 
      onSelected: onSelected,
      labelStyle:  TextStyle(color: selected ? Uza_Colors.white: null),
      avatar: isColor ? UzaRoundedContainer(width: 50, height: 50, backgroundColor: Uza_HelperFun.getColor(text)!): null,
      shape:  isColor ? const CircleBorder() : null,
      labelPadding: isColor? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0): null,
      backgroundColor: isColor ? Uza_HelperFun.getColor(text)! : null,
      ),
    );
  }
}