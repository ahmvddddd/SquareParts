// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable


import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:square_parts/utils/helpers/helper_function.dart';
import '../../../../common/widgets/custom_shapes/containers/searchbar.dart';
import '../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/products_cards/product_card_horizontal.dart';
import '../../../../common/widgets/products/products_cards/product_category_card.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../models/category_model.dart';
import 'home_widgets/home_categories.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: 
      //Search bar
      Padding(
        padding: const EdgeInsets.all(TSizes.spaceBtwItems),
        child: TSearchBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: TColors.primary,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: TSizes.sm),
                    Padding(
                      padding: const EdgeInsets.all(TSizes.spaceBtwItems),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('SquareParts',
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: TColors.white),),
                          Icon(Iconsax.setting, color: Colors.white)
                        ],
                      )
                    ),
                    
                    //Categories
                    Padding(
                      padding: const EdgeInsets.fromLTRB(TSizes.spaceBtwItems, TSizes.sm, TSizes.spaceBtwItems, 0,),
                      child: Column(
                        children: [
                      THomeCategories(
                        itemCount: brandList.length,
                        itemBuilder: (_, index) {
                          return TVerticalImageText(image: brandList[index].imageUrl, onTap: brandList[index].onTap);
                        },
                      ),
                      ]
                      ),
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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  )
                ),
                padding: EdgeInsets.all(TSizes.spaceBtwItems),
                  child: Column(
                    children: [
                      
                      //Heading
                      const SizedBox(height: TSizes.defaultSpace,),
                  
                      //Popular products
                        TSectionHeading(title: 'Category', showActionButton: false,),
                       const SizedBox(height: TSizes.spaceBtwItems,),
                        TGridLayout(
                        crossAxisCount: 3,
                        mainAxisExtent: 85,
                        itemCount: homeList.length, 
                        itemBuilder: (_, index) =>  Container(
                          width:80,
                          padding: EdgeInsets.all(TSizes.sm),
                          decoration: BoxDecoration(
                            gradient: TColors.linearGradient2,
                            borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)
                          ),
                          child: ProductCategoryCard(
                          imageUrl: homeList[index].imageUrl,
                          categoryText: homeList[index].title,
                                              ),
                        )),
        
                        const SizedBox(height: TSizes.spaceBtwSections,),
                        TSectionHeading(title: 'Recent', showActionButton: false,),
                        //Recent
                        const SizedBox(height: TSizes.spaceBtwItems,),
                         SizedBox(
                          height: 130,
                          child: ListView.separated(
                            shrinkWrap: true,
                            separatorBuilder: (context, index) => SizedBox(width:TSizes.sm),
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) => TProductCardHorizontal(),
                            )
                        )
                      
                      ],
                  ),
                ),
              )
            ]
          )
        ),
      )
    );
  }
}




// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:square_parts/common/widgets/products/products_cards/product_card_vertical.dart';
// import '../../../../common/widgets/custom_shapes/containers/tetiary_container.dart';
// import '../../../../common/widgets/layouts/grid_layout.dart';
// import '../../../../common/widgets/layouts/listview_horizontal.dart';
// import '../../../../common/widgets/texts/section_heading.dart';
// import '../../../../utils/constants/image_strings.dart';
// import '../../../../utils/constants/sizes.dart';
// import 'home_widgets/promo_slider.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             //header
//             // TetiaryContainer(),

//             //body
//             Column(
//               children: [
            
//                 //banners
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TSectionHeading(
//                     title: 'Top Products',
//                   ),
//                 ),
//                 const SizedBox(
//                   height: TSizes.spaceBtwItems,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TPromoSlider(banners: [
//                     TImages.avis, TImages.hertz, TImages.tesla
//                     ],
//                      ),
//                 ),
            
//                 //Categories
//                 const SizedBox(height: TSizes.spaceBtwItems,),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TSectionHeading(
//                     title: 'Category',
//                   ),
//                 ),
//                 const SizedBox(
//                   height: TSizes.spaceBtwItems,
//                 ),
//                 Expanded(child: ListViewHorizontal()),
                
//                 //products
//                 const SizedBox(height: TSizes.spaceBtwItems,),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TSectionHeading(
//                     title: 'Recent Products',
//                   ),
//                 ),
//                 const SizedBox(
//                   height: TSizes.spaceBtwItems,
//                 ),
//                 Expanded(
//                   child: TGridLayout(
//                     itemCount: 4,
//                     itemBuilder: (context, index) => TProductCardVertical(),
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
