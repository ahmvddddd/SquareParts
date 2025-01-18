// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/responsive.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/home_controller.dart';
class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners, required this.autoplay,
  });
  
  final List<String> banners;
  final bool autoplay;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: autoplay,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
          items: 
            banners.map((url) => Padding(
              padding: const EdgeInsets.all(2),
              child: TRoundedImage(
                width: Responsive.promoSliderWidth, backgroundColor: TColors.primary, imageUrl: url),
            )).toList()
          
        ),

        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i< banners.length; i++)
                  TCircularContainer(
                  width: 10,
                  height: 10,
                  radius: 100,
                  margin: EdgeInsets.only(right: 5),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? TColors.primary : TColors.grey,
                ),
                
              ],
            ),
          ),
        )
      ],
    );
  }
}



// width: 20,
// height: 4,