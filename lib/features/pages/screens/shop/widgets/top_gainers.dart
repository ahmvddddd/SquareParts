// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
// import '../../../../../utils/constants/colors.dart';
// import '../../../../../utils/constants/image_strings.dart';
// import '../../../../../utils/constants/sizes.dart';
// import '../../../../../utils/helpers/helper_function.dart';

// class TopGainers extends StatelessWidget {
//   const TopGainers({
//     super.key,
//      this.text2,
//      this.imageUrl,
//      this.text,
//      this.text3,
//      this.imageUrl2,
//      this.onTap,
//   });

//   final String? imageUrl;
//   final String? text;
//   final String? text2;
//   final String? text3;
//   final String? imageUrl2;
//   final VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return SizedBox(
//       height: 150,
//       child: ListView.separated(
//         separatorBuilder: (_, index) => SizedBox(
//           width: TSizes.sm,
//         ),
//         itemCount: 4,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (_, index) {
//           return GestureDetector(
//             onTap: newList[index].onTap,
//             child: TRoundedContainer(
//               backgroundColor: dark ? TColors.dark : Colors.grey,
//               showBorder: true,
//               radius: TSizes.borderRadiusMd,
//               width: 100,
//               height: 150,
//               padding: EdgeInsets.all(4),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Image.asset(
//                         newList[index].imageUrl,
//                         width: 20,
//                       ),
//                       SizedBox(width: TSizes.sm),
//                       Text(
//                         newList[index].text,
//                         style: Theme.of(context).textTheme.labelLarge,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: TSizes.sm,
//                   ),
//                   Image.asset(
//                     newList[index].imageUrl2,
//                     height: 30,
//                     width: 80,
//                   ),
//                   SizedBox(
//                     height: TSizes.sm,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         newList[index].text2,
//                         style: Theme.of(context).textTheme.labelLarge,
//                       ),
//                       Text(
//                         newList[index].text3,
//                         style: Theme.of(context).textTheme.labelMedium,
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// List newList = [
//   TopGainers(
//       imageUrl: TImages.btc, text: 'BTC', text2: '\$35,620.05', text3: '+2.45', onTap: () => Get.to(() => () {},),  imageUrl2: TImages.linePlus),
//   TopGainers(
//        imageUrl: TImages.eth, text: 'ETH', text2: '\$14,719.02', text3: '+1.72', onTap: () => Get.to(() => () {}),  imageUrl2: TImages.linePlus),
//   TopGainers(
//      imageUrl: TImages.usd, text: 'USDT', text2: '\$8,763.29', text3: '+1.3', onTap: () => Get.to(() => () {}),  imageUrl2: TImages.linePlus),
//      TopGainers(
//        imageUrl: TImages.xrp, text: 'XRP', text2: '\$5,620.05', text3: '+2.43', onTap: () => Get.to(() => () {}),  imageUrl2: TImages.linePlus)
// ];
