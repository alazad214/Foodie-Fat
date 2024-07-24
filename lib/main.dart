import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_fat/pages/splash.dart';

import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Foodie Fat',
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}



