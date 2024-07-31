// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../../../utils/helpers/helper_function.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.xs),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your coupon code',
                hintStyle: TextStyle(fontSize: 12, color: dark ? TColors.white : TColors.dark),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 0, 
                  style: BorderStyle.none,
          ),
        ),
              )
              ),
            ),

            //Button
            SizedBox(width: 80,
             child: ElevatedButton(onPressed: (){},
             style: ElevatedButton.styleFrom(backgroundColor:  TColors.primary),
              child: Text('Apply',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.white),)
              ),
              ),
        ],
      ),
    );
  }
}