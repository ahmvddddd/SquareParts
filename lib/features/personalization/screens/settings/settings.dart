// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../common/widgets/list_tile/settings_menu_tile.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Settings',
        style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            //Body
            Padding(
              padding: EdgeInsets.all(TSizes.spaceBtwItems),
              child: Column(
                children: [
                  //Account settings
                  TSectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TRoundedContainer(
                    padding: EdgeInsets.all(TSizes.sm),
                    radius: TSizes.borderRadiusLg,
                    backgroundColor: dark ? TColors.dark : Colors.grey,
                    child: Column(
                      children: [
                        TSettingsMenuTile(
                  icon: Iconsax.user,
                  title: 'Accounts',
                  subTitle: 'Manage your account',
                  ),

                  TSettingsMenuTile(
                  icon: Iconsax.key,
                  title: 'Security',
                  subTitle: 'Change your security and privacy settings',
                  ),

                  TSettingsMenuTile(
                  icon: Iconsax.triangle,
                  title: 'Third Party Apps',
                  subTitle: 'Control third party access',
                  ),

                  TSettingsMenuTile(
                  icon: Iconsax.setting,
                  title: 'Developer Mode',
                  subTitle: 'Customize developer settings',
                  ),
                      ],
                    ),
                  ),
                
                //App Settings
                SizedBox(height: TSizes.spaceBtwSections),
                TSectionHeading(title: 'App Settings', showActionButton: false,),
                SizedBox(height: TSizes.spaceBtwItems,),

                TRoundedContainer(
                    padding: EdgeInsets.all(TSizes.sm),
                    radius: TSizes.borderRadiusLg,
                    backgroundColor: dark ? TColors.dark : Colors.grey,
                    child: Column(
                      children: [
                        TSettingsMenuTile(
                icon: Iconsax.triangle, 
                title: 'Connected Apps', 
                subTitle: 'View connected apps'
                ),

                TSettingsMenuTile(
                  icon: Iconsax.microphone,
                  title: 'Ads',
                  subTitle: 'Customize advertisement prefrences',
                  ),

                  TSettingsMenuTile(
                  icon: Iconsax.health,
                  title: 'Help',
                  subTitle: 'Talk to customer service',
                  ),

                  TSettingsMenuTile(
                  icon: Iconsax.bitcoin_card,
                  title: 'Deactivate account',
                  subTitle: 'Closs all account and deactivate your wallet',
                  ),
                      ],
                    ),
                  ),
                
                ],
              ),
            )
          ]
        )
      )
    );
  }
}
