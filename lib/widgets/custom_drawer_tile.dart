import 'package:flutter/material.dart';

class CustomDrawerTile extends StatelessWidget {
  final icon;
  final text;
  final ontap;
  const CustomDrawerTile({super.key, this.icon, this.text, this.ontap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
        size: 25,
      ),
      title: Text(
        text,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      onTap: ontap,
    );
  }
}
