import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiles_app/constant/app_color.dart';
import 'package:tiles_app/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tiles-UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: appColor),
      ),
      initialRoute: Routes.splashScreen,
      getPages: Routes.routes,
    );
  }
}
