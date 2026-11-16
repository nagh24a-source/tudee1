import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled8/screens/home_screen.dart';
import 'package:untitled8/screens/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // إخفاء علامة Debug
      debugShowCheckedModeBanner: false,

      // أول صفحة تظهر عند تشغيل التطبيق
      home: TodoScreen(),
    );
  }
}
