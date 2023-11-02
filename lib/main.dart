import 'package:Healconnect/views/PatientPage/AccountPage.dart';
import 'package:Healconnect/views/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:Healconnect/views/PatientPage/homeScreen.dart';

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
        AccountPage.id: (context) => const AccountPage(),
        OnBoarding.id: (context) => const OnBoarding(),
        NavBarBottom.id: (context) => const NavBarBottom(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
    );
  }
}
