import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../features/personalization/views/profile.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../widgets/image_text/uza_Circularimage.dart';

class UzaUserProfile extends StatelessWidget {
  const UzaUserProfile({
    super.key, required onPressed,
  });
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: const UzaCircularImage(
       image: Uza_ImageStrings.user,
       width: 50,
       height: 50,
       padding: 0,
     ),
     title: Text('Poltech Solutions', style: Theme.of(context).textTheme.headlineSmall!.apply(color:Uza_Colors.white)),
     subtitle: Text('support@poltechsolutions.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color:Uza_Colors.white)),
     trailing: IconButton(onPressed: () => Get.to(() => const ProfileScreen()), icon: const Icon(Iconsax.edit, color: Uza_Colors.white)),
                    );
  }
}