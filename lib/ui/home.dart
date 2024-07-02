import 'package:flutter/material.dart';
import 'package:foodie_fat/widgets/custom_font.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomFont(
                    title: "Hello Azad,",
                  ),
                  CircleAvatar(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
              cusSizebox(15.0),
              CustomFont(
                title: "palatable Food",
              ),
              CustomFont(
                title: "Discover and enjoy great food..",
                size: 15.0,
                color: Colors.black45,
                fontwidget: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget cusSizebox(height) {
  return SizedBox(
    height: height,
  );
}
