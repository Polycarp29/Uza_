import 'package:flutter/material.dart';
import 'package:uza_/utils/device/device_utility.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class UzaCustTabBar extends StatelessWidget implements PreferredSizeWidget{
  const UzaCustTabBar({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
     final dark = Uza_HelperFun.isDarkMode(context);
    return Material(
      color: dark ? Uza_Colors.black : Uza_Colors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor:  Uza_Colors.primary,
        labelColor: dark ? Uza_Colors.white : Uza_Colors.primary,
        unselectedLabelColor:  Uza_Colors.darkGrey,        
        )
     
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(Uza_DeviceUtils.getAppBarHeight());
}
