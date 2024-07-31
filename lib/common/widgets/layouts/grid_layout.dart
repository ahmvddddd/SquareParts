// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
    required this.itemCount,
    this.crossAxisCount = 2,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });

  final int itemCount;
  final int crossAxisCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount:  itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: TSizes.gridViewSpacing / 2,
        crossAxisSpacing: TSizes.gridViewSpacing / 2,
        mainAxisExtent: mainAxisExtent,
        ),
      itemBuilder: itemBuilder,
      );
  }
}

