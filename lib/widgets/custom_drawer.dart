import 'package:flutter/material.dart';

import 'custom_drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            decoration: const BoxDecoration(),
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          CustomDrawerTile(
              text: "HOME",
              icon: Icons.home_outlined,
              ontap: () {
                Navigator.pop(context);
              }),
          const CustomDrawerTile(
            text: "POLICY",
            icon: Icons.policy_outlined,
          ),
          const CustomDrawerTile(
            text: "Theme",
            icon: Icons.dark_mode_outlined,
          ),
          const CustomDrawerTile(
            text: "LOG OUT",
            icon: Icons.logout,
          ),
        ],
      ),
    );
  }
}
