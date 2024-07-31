import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/image_strings.dart';
import '../screens/brand/brand_products.dart';

class CategoryModel {
  final String imageUrl;
  final String title;
  final VoidCallback? onTap;

  CategoryModel({required this.title, required this.imageUrl, this.onTap});
}

List homeList = [
  CategoryModel(
    imageUrl: TImages.batteries,
    title: 'Batteries',
  ),
  CategoryModel(
    imageUrl: TImages.brakepads,
    title: 'Brakepads',
  ),
  CategoryModel(
    imageUrl: TImages.filters,
    title: 'Filters',
  ),
  CategoryModel(
    imageUrl: TImages.oil,
    title: 'Oil',
  ),
  CategoryModel(
    imageUrl: TImages.plugs,
    title: 'Plugs',
  ),
  CategoryModel(
    imageUrl: TImages.tires,
    title: 'Tires',
  ),
];

List brandList = [
  CategoryModel(
    imageUrl: TImages.abro,
    title: 'Abro',
    onTap: () => Get.to((const BrandProducts(
      brandImage: TImages.abro,
      brandName: 'Abro',
    ))),
  ),
  CategoryModel(
    imageUrl: TImages.bosch,
    title: 'Bosch',
    onTap: () => Get.to((const BrandProducts(
      brandImage: TImages.bosch,
      brandName: 'Bosch',
    ))),
  ),
  CategoryModel(
    imageUrl: TImages.castrol,
    title: 'Castrol',
    onTap: () => Get.to((const BrandProducts(
      brandImage: TImages.castrol,
      brandName: 'Castrol',
    ))),
  ),
  CategoryModel(
    imageUrl: TImages.michelin,
    title: 'Michelin',
    onTap: () => Get.to((const BrandProducts(
      brandImage: TImages.michelin,
      brandName: 'Michelin',
    ))),
  ),
  CategoryModel(
    imageUrl: TImages.mobil,
    title: 'Mobil',
    onTap: () => Get.to((const BrandProducts(
      brandImage: TImages.mobil,
      brandName: 'Mobil',
    ))),
  ),
];

List shopList = [
  CategoryModel(
    imageUrl: TImages.abroFluid,
    title: 'Abro Fluid',
    
  ),
  CategoryModel(
    imageUrl: TImages.plugs,
    title: 'Bosch Spark Plugs',
  ),
  CategoryModel(
    imageUrl: TImages.castrolOil,
    title: 'Castrol Full Syntethic Engine Oil',
  ),
  CategoryModel(
    imageUrl: TImages.michelinTire,
    title: 'Michelin Vehicle Tire',
  ),
  CategoryModel(
    imageUrl: TImages.oil,
    title: 'Mobil Advanced Full Syntethic Engine Oil',
  )
];
