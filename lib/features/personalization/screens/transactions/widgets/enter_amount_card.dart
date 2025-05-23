// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_function.dart';

class EnterAmount extends StatelessWidget {
  const EnterAmount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
        borderColor: TColors.primary,
        backgroundColor: dark ? Colors.transparent : TColors.white,
        showBorder: true,
        child: TextField(
        decoration: InputDecoration(
          prefix: Icon(Iconsax.password_check),
          hintText: 'Amount',
          hintStyle: TextStyle(
          color: dark ? Colors.white : Colors.black),
        ),
      ));
  }
}
