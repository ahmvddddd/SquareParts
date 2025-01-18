// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import '../../../../common/widgets/appbar/appbar.dart';
// import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
// import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
// import '../../../../common/widgets/texts/section_heading.dart';
// import '../../../../utils/constants/colors.dart';
// import '../../../../utils/constants/sizes.dart';
// import '../../../../utils/constants/text_strings.dart';
// import 'widgets/account_card.dart';
// import 'widgets/enter_amount_card.dart';

// class SendScreen extends StatelessWidget {
//   const SendScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(TSizes.spaceBtwItems),
//         child: ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(backgroundColor:  TColors.primary),
//           child: Text(
//             'Proceed',
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//         ),
//       ),
//       appBar: TAppBar(
//                     title: Text('Send',
//                         style: Theme.of(context)
//                             .textTheme
//                             .headlineSmall),
//                     showBackArrow: true,
//                   ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             //header
//             Column(
//               children: [
                
//                 //Acount Balance
//                 Padding(
//                   padding: const EdgeInsets.all(TSizes.spaceBtwItems),
//                   child: TRoundedContainer(
//                     padding: const EdgeInsets.all(TSizes.defaultSpace),
//                     width: 360,
//                     backgroundColor: TColors.primary.withOpacity(0.8),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         //Texts
//                         Text(TTexts.accountBalance,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .headlineMedium),
//                         Text(TTexts.accountText,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .labelMedium),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             //Body
//             Padding(
//               padding: const EdgeInsets.all(TSizes.spaceBtwItems),
//               child: Column(
//                 children: [

//                   TSearchContainer(text: 'Search', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),

//                   const SizedBox(height: TSizes.spaceBtwItems),
//                   TSectionHeading(
//                     title: 'Select Crypto',
//                     showActionButton: false,
//                   ),
                    
//                   const SizedBox(height: TSizes.spaceBtwItems),
//                   // ListTile(
//                   //   leading: Image.asset(TImages.btc, height: 30),
//                   //   title: Text('BTC',
//                   //   style: Theme.of(context).textTheme.labelSmall,
//                   //   ),
//                   //   subtitle: Text('\$14,790.00',
//                   //   style: Theme.of(context).textTheme.labelSmall,
//                   //   ),
//                   //   trailing: Icon(Iconsax.arrow_up_3, color: Colors.green,),
//                   // ),
//                   // const SizedBox(height: TSizes.sm),
//                   // ListTile(
//                   //   leading: Image.asset(TImages.eth, height: 30),
//                   //   title: Text('ETH',
//                   //   style: Theme.of(context).textTheme.labelSmall,
//                   //   ),
//                   //   subtitle: Text('\$5,020.00',
//                   //   style: Theme.of(context).textTheme.labelSmall,
//                   //   ),
//                   //   trailing: Icon(Iconsax.arrow_up_3, color: Colors.green,),
//                   // ),
//                   // const SizedBox(height: TSizes.sm),
//                   // ListTile(
//                   //   leading: Image.asset(TImages.usd, height: 30),
//                   //   title: Text('USDT',
//                   //   style: Theme.of(context).textTheme.labelSmall,
//                   //   ),
//                   //   subtitle: Text('\$1,190.50',
//                   //   style: Theme.of(context).textTheme.labelSmall,
//                   //   ),
//                   //   trailing: Icon(Iconsax.arrow_up_3, color: Colors.green,),
//                   // ),
                  
//                   const SizedBox(height: TSizes.spaceBtwItems),
//                   TSectionHeading(
//                     title: 'Enter Address',
//                     showActionButton: false,
//                   ),
//                   const SizedBox(height: TSizes.sm),
//                   AccountCard(),
//                   const SizedBox(height: TSizes.spaceBtwItems),
//                   TSectionHeading(
//                     title: 'Enter Amount',
//                     showActionButton: false,
//                   ),
//                   const SizedBox(height: TSizes.sm),
//                   EnterAmount(),

//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

