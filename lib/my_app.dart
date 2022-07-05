import 'package:flutter/material.dart';

import 'ui/screens/app_screen.dart';
import 'package:get/get.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: AppScreen(),

    );
  }
}
