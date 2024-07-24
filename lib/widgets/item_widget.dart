import 'package:flutter/material.dart';
import 'package:foodie_fat/pages/details_page.dart';
import 'package:foodie_fat/pages/splash.dart';
import 'package:foodie_fat/widgets/custom_text.dart';
import 'package:get/get.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.70,
      children: [
        for (int i = 1; i <= 10; i++)
          Container(
            padding: const EdgeInsets.symmetric(),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFF232227),
                boxShadow: const [
                  BoxShadow(color: Colors.black, spreadRadius: 1, blurRadius: 8)
                ]),
            child: InkWell(
              onTap: () {
                Get.to(() => const DetailsPage());
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/burger.png"),
                    CustomFont(
                      title: "Pizza",
                      color: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                          child: Text(
                            "৳ " "350",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Get.to(() => const Splash());
                            },
                            icon: const Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ))
                      ],
                    ),

                  ],
                ),
              ),
            ),
          )
      ],
    );
  }
}
