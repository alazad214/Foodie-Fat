import 'package:flutter/material.dart';
import 'package:foodie_fat/ui/home.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), (){
      Get.offAll(()=> const Home());
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: h / 1,
            child: Center(
                child: Image.asset(
              "assets/images/logo.png",
              height: 30,
            )),
          )
        ],
      )),
    );
  }
}
