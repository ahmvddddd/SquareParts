import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/responsive.dart';
import '../../../../utils/helpers/helper_function.dart';
import 'rounded_container.dart';

class TSearchBar extends StatelessWidget {
  const TSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  TRoundedContainer(
      backgroundColor: Colors.transparent,
      width: double.infinity,
      height: Responsive.searchContainerHeight,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle:  Theme.of(context).textTheme.labelSmall!.copyWith( 
              color: dark ? TColors.light : TColors.dark,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 0, 
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const EdgeInsets.only(left: 30,),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 16.0),
            child: Icon(
              Iconsax.scan,
              color: dark ? TColors.light : TColors.dark,
              size: 18,
            ),
          ),
          suffixIcon:  Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 16.0),
            child: Icon(
              Iconsax.search_favorite,
              color: dark ? TColors.light : TColors.dark,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}

