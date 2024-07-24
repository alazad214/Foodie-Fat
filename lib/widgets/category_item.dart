import 'package:flutter/material.dart';

class CategorysItem extends StatelessWidget {
  final ontap;
  final image;
  const CategorysItem({super.key, this.ontap, this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              image,
              height: 50,
              width: 50,
            ),
          ),
        ),
      ),
    );
  }
}
