import 'package:flutter/material.dart';
import 'package:Healconnect/constant.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double backHeight = 240;

    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                     width: MediaQuery.of(context).size.width,
                     height: backHeight,
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
              Positioned(
                top: backHeight- 250/4,
                child: Column(
                  children: [
                    Row(
                      children: [
                        HomeContains(
                          img: Image.asset("assets/logos/rdv.png", width: 31, height: 31,), 
                          myColor: const Color.fromARGB(255, 184, 251, 223), 
                          txt: 'Prendre rendez-vous',
                          ),
                       const SizedBox(width: 5,),
                        HomeContains(
                           img: Image.asset("assets/logos/consult.png", width: 31, height: 31,), 
                          myColor: const Color.fromARGB(255, 255, 203, 203), 
                          txt: 'Faire consultation',
                        ),
                       const SizedBox(width: 5,),
                        HomeContains(
                           img: Image.asset("assets/logos/pharmacie.png", width: 31, height: 31,), 
                           myColor: const Color.fromARGB(255, 131, 210, 255), 
                           txt: 'Pharmacies',
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                       HomeContains(
                         img: Image.asset("assets/logos/add branch.png", width: 31, height: 31,), 
                         myColor: const Color.fromARGB(255, 255, 203, 203), 
                         txt: 'Ajouter membres',
                        ),
                        const SizedBox(width: 5,),
                       HomeContains(
                         img: Image.asset("assets/logos/rdv.png", width: 31, height: 31,), 
                         myColor: const Color.fromARGB(255, 184, 251, 223), 
                         txt: 'Prendre rendez-vous',
                        ),
                      ],
                    ),
                  ],
                ),
              )
                     
            
             ]
              
                        ),
          ],
        ),
        
      ),
      // bottomNavigationBar: Container(
      //   height: 80,
      //   margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      //   decoration: BoxDecoration(
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black,
      //         blurRadius: 20,
      //       )
      //     ]
      //   ),
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.circular(30),
      //     // BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25) ),
      //     child: BottomNavigationBar(
      //       backgroundColor: Colors.white,
      //       selectedItemColor: Color.fromARGB(255, 34, 124, 190),
      //       unselectedItemColor: Colors.black,
      //       type: BottomNavigationBarType.fixed,
      //       currentIndex: _selectedIndex,
      //       onTap: (index){
      //          setState(() {
      //            _selectedIndex = index;
      //          });
      //       },
      //       items: const [
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.home,),
      //           label: 'Accueil',
      //           ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.book_sharp,),
      //           label: 'Carnet'
      //           ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.calendar_month,),
      //           label: 'RDV'
      //           ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.account_circle,),
      //           label: 'Compte'
      //           ),
      //       ]
      //       ),
      //   ),
      // ),
    );
  }
}

class HomeContains extends StatelessWidget {
  const HomeContains({
    super.key, 
    required this.img,
     required this.myColor, 
     required this.txt,
  });
  final Image img;
  final Color myColor;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: 120,
     height: 120,
      child: ElevatedButton(
       style: ElevatedButton.styleFrom(
         backgroundColor: myColor,
         minimumSize: Size(100, 100),
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(20)
         )
       ),
       onPressed: (){}, 
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           img,
           Text(
            txt, 
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.black),),
         ],
             
       )
       ),
    );
  }
}