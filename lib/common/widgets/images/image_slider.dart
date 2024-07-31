// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imageList;

  const ImageSlider({super.key, required this.imageList});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: widget.imageList
                .map((item) => ClipRRect(
                  borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
                  child: Image.network(item, fit: BoxFit.cover, width: 390)))
                .toList(),
          ),
          Positioned(
            top: 16.0,
            right: 16.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.imageList.map((url) {
                int index = widget.imageList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? TColors.primary
                        : TColors.black,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
