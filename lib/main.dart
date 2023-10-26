import 'package:flutter/material.dart';
import 'package:healconnect/views/homeScreen.dart';

import 'views/onBoarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnBoarding.id,
      routes: {
        OnBoarding.id: (context) => const OnBoarding(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
    );
  }
}
