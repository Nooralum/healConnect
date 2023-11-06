import 'package:Healconnect/views/PatientPage/homeScreen.dart';
import 'package:flutter/material.dart';

import 'PatientPage/AccountPage.dart';
import 'mon_carnet_ado.dart';
import 'rend_2_vous_page.dart';

class NavBarBottom extends StatefulWidget {
  static const String id = '';
  const NavBarBottom({super.key});

  @override
  State<NavBarBottom> createState() => _NavBarBottomState();
}

class _NavBarBottomState extends State<NavBarBottom> {
  int _selectedIndex = 0;

//mettre les differentes pages ici
  List tabs = const [
    HomeScreen(), 
    MonCarnetAdoPage(), 
    RendezVousPage(),
    AccountPage(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 25,
            )
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          // BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25) ),
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: const Color.fromARGB(255, 34, 124, 190),
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Accueil',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.book_sharp,
                    ),
                    label: 'Carnet'
                    ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.calendar_month,
                    ),
                    label: 'RDV'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle,
                    ),
                    label: 'Compte'),
              ]),
        ),
      ),
      body: tabs[_selectedIndex],
    );
  }
}
