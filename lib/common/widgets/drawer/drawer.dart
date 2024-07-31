// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: TColors.primary,
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer header
          DrawerHeader(
            child: Icon(Icons.favorite,
            color: Theme.of(context).colorScheme.inversePrimary,),
          ),

          //home tile
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListTile(
              leading: Icon(Icons.home,
              color: Theme.of(context).colorScheme.inversePrimary,),
              title: Text("H O M E"),
              onTap: () {
                //pop drawer
                Navigator.pop(context);
                
              },
            ),
          ),

          //profile tile
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListTile(
              leading: Icon(Icons.person,
              color: Theme.of(context).colorScheme.inversePrimary,),
              title: Text("P R O F I L E"),
              onTap: () {
                //pop drawer
                Navigator.pop(context);

                //navigate to profile page
                Navigator.pushNamed(context, '/profile_page');
              },
            ),
          ),

          //users tile
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListTile(
              leading: Icon(Icons.group,
              color: Theme.of(context).colorScheme.inversePrimary,),
              title: Text("U S E R S"),
              onTap: () {
                //pop drawer
                Navigator.pop(context);

                //navigate to profile page
                Navigator.pushNamed(context, '/users_page');
              },
            ),
          ),
            ],
          ),

          //logout tile
          // Padding(
          //   padding: const EdgeInsets.only(left: 25.0, bottom: 25),
          //   child: ListTile(
          //     leading: Icon(Icons.home,
          //     color: Theme.of(context).colorScheme.inversePrimary,),
          //     title: Text("L O G O U T"),
          //     onTap: () {
          //       //pop drawer
          //       Navigator.pop(context);

          //       //logout
          //       logout();
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}