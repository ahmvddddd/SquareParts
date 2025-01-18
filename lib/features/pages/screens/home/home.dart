import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:square_parts/utils/helpers/helper_function.dart';
import '../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/products_cards/product_card_horizontal.dart';
import '../../../../common/widgets/products/products_cards/product_card_vertical.dart';
import '../../../../common/widgets/products/products_cards/product_category_card.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/responsive.dart';
import '../../../../utils/constants/sizes.dart';
import '../../models/category_model.dart';
import 'home_widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(children: [
        Container(
          color: TColors.primary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: TSizes.sm),
              Padding(
                  padding: const EdgeInsets.all(TSizes.spaceBtwItems),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SquareParts',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: TColors.white),
                      ),
                      const Icon(Iconsax.notification, color: Colors.white)
                    ],
                  )),

              //Categories
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  TSizes.sm,
                  TSizes.sm,
                  TSizes.sm,
                  0,
                ),
                child: Column(children: [
                  THomeCategories(
                    itemCount: brandList.length,
                    itemBuilder: (_, index) {
                      return TVerticalImageText(
                          image: brandList[index].imageUrl,
                          onTap: brandList[index].onTap);
                    },
                  ),
                ]),
              )
            ],
          ),
        ),

        //Body
        Container(
          color: TColors.primary,
          child: Container(
            decoration: BoxDecoration(
                color: dark ? Colors.black : Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            padding: const EdgeInsets.all(TSizes.spaceBtwItems),
            child: Column(
              children: [
                //Heading
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                //Popular products
                const TSectionHeading(
                  title: 'Category',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TGridLayout(
                    crossAxisCount: 3,
                    mainAxisExtent: Responsive.smCardHeight,
                    itemCount: homeList.length,
                    itemBuilder: (_, index) => Container(
                          width: 80,
                          padding: const EdgeInsets.all(TSizes.sm),
                          decoration: BoxDecoration(
                              gradient: TColors.linearGradient2,
                              borderRadius:
                                  BorderRadius.circular(TSizes.borderRadiusLg)),
                          child: ProductCategoryCard(
                            imageUrl: homeList[index].imageUrl,
                            categoryText: homeList[index].title,
                          ),
                        )),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                const TSectionHeading(
                  title: 'Recent',
                  showActionButton: false,
                ),
                //Recent
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                SizedBox(
                    height: Responsive.mdHorizontalCardHeight,
                    child: ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: TSizes.sm),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) =>
                          const TProductCardHorizontal(),
                    )),

                //products
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                const TSectionHeading(
                  title: 'Top Products',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TGridLayout(
                  mainAxisExtent: Responsive.cardHeight,
                  itemCount: shopList.length,
                  itemBuilder: (_, index) => TProductCardVertical(
                    width: Responsive.verticalCardWidth,
                    imageUrl: shopList[index].imageUrl,
                    title: shopList[index].title,
                    brand: shopList[index].title,
                  ),
                ),
              ],
            ),
          ),
        )
      ])),
    ));
  }
}
