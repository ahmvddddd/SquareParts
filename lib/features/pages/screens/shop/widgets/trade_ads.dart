import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
class TradeAds extends StatelessWidget {
  
  final String trader;
  final String tradeText;
  final String image;
  final String rate;
  final String supply;
  const TradeAds({
    super.key, required this.rate, required this.supply, required this.tradeText, required this.trader, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
     height: 180,
     showBorder: true,
     borderColor: TColors.primary,
     backgroundColor: Colors.transparent,
     radius: TSizes.borderRadiusLg,
     padding: const EdgeInsets.all(TSizes.sm),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

       children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
               children: [
                 Text(trader,
                 style: Theme.of(context).textTheme.bodyMedium,),
                 const SizedBox(width: TSizes.xs,),
                 const Icon(Iconsax.verify, color: TColors.primary, size: TSizes.iconSm,),
               ],
             ),
             
             //Buy  button
             GestureDetector(
              onTap: () {},
               child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
                        color: TColors.primary
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Iconsax.add, color: Colors.white, size: TSizes.iconSm),
                          Text(tradeText,style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white))
                        ],
                      ),
                    ),
             ),
           ],
         ),

         const Padding(
           padding: EdgeInsets.all(TSizes.sm),
           child: Divider(),
         ),

         const SizedBox(height: TSizes.sm,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text('Rate',
            style: Theme.of(context).textTheme.labelMedium,),
         Row(
           children: [
             Text(rate,
             style: Theme.of(context).textTheme.bodyMedium,),
             const SizedBox(width: TSizes.xs),
             Image.asset(image, height: 20,)
           ],
         ),
         ],
         ),

         const SizedBox(height: TSizes.sm,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text('Supply',
            style: Theme.of(context).textTheme.labelMedium,),
         Text(supply,
         style: Theme.of(context).textTheme.bodyMedium,),
         ],
         ),

       ],
     ),
                    );
  }
}