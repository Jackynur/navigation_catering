import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_praktikm/app/modules/home/views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(), // Halaman utama adalah HomeScreen
    );
  }
}
