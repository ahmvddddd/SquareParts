// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/products_cards/product_card_vertical.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key, required this.brandImage, required this.brandName});
  final String brandImage;
  final String brandName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text('Brand Page',style: Theme.of(context).textTheme.headlineSmall,),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.spaceBtwItems),
            child: Column(
              children: [
                //Brand Detail
                TBrandCard(showBorder: true,
                brandImage: brandImage,
                brandName: brandName,
                ),
      
                //products
                SizedBox(height: TSizes.spaceBtwSections,),
                TGridLayout(
                  itemCount: 4, itemBuilder: (_, index) =>  TProductCardVertical(
                    brand: brandName,
                    imageUrl: TImages.oil, title: 'Mobil Advanced Full Synthetic Oil',
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}