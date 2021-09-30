import 'package:ayo_masak/utils/importutils.dart';
import 'package:ayo_masak/view/importview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ayo Masak',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightTheme,
      home: const Into(),
    );
  }
}
