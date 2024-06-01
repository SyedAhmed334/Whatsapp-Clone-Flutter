import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/Screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "OpenSans",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF075E54),
          secondary: const Color(0xFF128C7E),
        ),
        // colorScheme: ColorScheme.fromSwatch(
        //   accentColor: const Color(0xFF128C7E),
        // ),
        useMaterial3: false,
      ),
      home: const HomeScreen(),
    );
  }
}
