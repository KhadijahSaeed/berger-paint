import 'package:berger_paint_delivery_app/home.dart';
import 'package:berger_paint_delivery_app/main_page.dart';
import 'package:berger_paint_delivery_app/pointer.dart';
import 'package:berger_paint_delivery_app/splas.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'checkout.dart';
import 'login.dart';

void main() {
  runApp( DevicePreview(builder: (context) =>const MyApp(),));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      // home: const HomePage(),
      home:  SplashScreen(),
      // home: CheckoutPage(),
    );
  }
}

