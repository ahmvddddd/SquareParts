
import 'package:flutter/material.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'cart_menu_icon.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        children: [
          Text(TTexts.homeAppBarTitle,
           style: Theme.of(context).textTheme.labelMedium!.apply(color:TColors.grey)),
           Text(TTexts.homeAppBarSubTitle,
           style: Theme.of(context).textTheme.labelSmall!.apply(color:TColors.white)),
        ], 
      ),
      actions: [
        TCartCounterIcon(onPressed: () {}, iconColor: TColors.white,)
      ],
    );
  }
}