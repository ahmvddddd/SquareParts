// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable


import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../home/home_widgets/promo_slider.dart';
import 'widgets/bottom_add_to_cart.dart';
import 'widgets/product_data.dart';

class ProductDetailScreen extends StatelessWidget {
   const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return   SafeArea(
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Product',
          style: Theme.of(context).textTheme.headlineSmall,),
          showBackArrow: true,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.spaceBtwItems),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor:  TColors.primary),
            child: Text(
              'Proceed',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// Product image slider
              Padding(
                padding: const EdgeInsets.all(TSizes.spaceBtwItems),
                child: 
                 //categories
                    const TPromoSlider(
                      autoplay: false,
                      banners: [TImages.oil, TImages.oil, TImages.oil],),
              ),
      
              // Product Details
              Padding(
                padding: EdgeInsets.all(TSizes.spaceBtwItems),
                child: Column(
                  children: [
                        
                        //Price, Title , Stock and Brand
                        ProductData(),
                        SizedBox(height: TSizes.spaceBtwItems),
      
                        TBottomAddToCart(),
                        SizedBox(height: TSizes.spaceBtwItems),
      
                        //Attributes
                        // TProductAttributes(),
                        // SizedBox(height: TSizes.spaceBtwSections),
      
                        //Description
                        TSectionHeading(title: 'Description', showActionButton: false),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        ReadMoreText(
                          'This Product is a unique product, made out of quality materials. Crafted by the best of professionals still have to write a lot of things so i can test this widget   ',
                          trimLines: 2,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: ' Show more',
                          trimExpandedText: 'Less',
                          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                        ),
                        
                        SizedBox(height: TSizes.spaceBtwItems,),
      
                        //Reviews
                        Divider(),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TSectionHeading(title: 'Reviews (100)', showActionButton: false,),
                            IconButton(onPressed: () {}, icon: Icon(Iconsax.arrow_right_3, size: 18)),
                          ],
                        )
                  ],
                ),
                ),
                
            ]
          )
        )
      ),
    );
  }
}



