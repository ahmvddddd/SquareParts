import 'package:flutter/material.dart';
import 'package:square_parts/utils/constants/image_strings.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/searchbar.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/products_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../../models/category_model.dart';
import '../home/home_widgets/promo_slider.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Shop',
          style: Theme.of(context).textTheme.headlineSmall,),
        ),
        bottomNavigationBar: //Search bar
        const Padding(
          padding: EdgeInsets.all(TSizes.spaceBtwItems),
          child: TSearchBar(),
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.spaceBtwItems),
            child: Column(
              children: [
                //categories
                    const TPromoSlider(
                      autoplay: true,
                      banners: [TImages.abroFluid, TImages.castrolOil, TImages.michelinTire],),
          
                //products
                const SizedBox(height: TSizes.spaceBtwItems,),
                const TSectionHeading(title: 'All Products', showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                TGridLayout(
                  mainAxisExtent: 258,
                  itemCount: shopList.length, itemBuilder: (_, index) =>  TProductCardVertical(
                    width: 180,
                    imageUrl: shopList[index].imageUrl, title: shopList[index].title, brand: shopList[index].title,
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}