import 'package:flutter/material.dart';
import 'package:healconnect/constant.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
                    Container(
                       width: MediaQuery.of(context).size.width,
                       height: 240,
                       decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                     ),
                      image: DecorationImage(image: AssetImage(
                             'assets/images/appFont.jpg',
                      ),
                      fit: BoxFit.cover
                      )
                    ),
           child: Column(
               children: [
                  const ListTile(
                    leading: Text('Welcome!!', style: TextStyle(fontSize: 25, color: Colors.white),),
                    trailing: Icon(Icons.qr_code, color: Colors.black, size: 40,),
                  ),
          const SizedBox(height: 20,),
          Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              decoration: InputDecoration(
                label: const Text(
                  'recherche',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: noir,
                    fontSize: 20
                  ),
                  ),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: noir,
                    size: 30,
                    ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
          children:  [
            Container(
              width: 100,
              height: 100,
              child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  maximumSize:const Size(100, 100),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                 ),
                  onPressed: (){}, 
                  child: const Column(
                    children: [
                      Icon(Icons.person),
                      Text('kds,lk')
                    ],
                  )
              ),
            ),
          ],
                      ),
                    ],
                  ),
          
                  
      ],
                 ),
      ),
    );
  }
}