import 'package:Healconnect/views/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:Healconnect/views/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NavBarBottom.id,
      routes: {
        NavBarBottom.id:(context)=> NavBarBottom(),
        HomeScreen.id:(context)=> HomeScreen(),
      },
    );
  }
}

