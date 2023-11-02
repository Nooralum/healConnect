import 'package:flutter/material.dart';

import 'constant.dart';

class monDrawer extends StatelessWidget {
   monDrawer({
    super.key,
  });
  
 final List DrawerList = [
    'Historique des RDV',
    'Historique des consultations',
    'Code QR',
    'Paramètre',
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: bottomColor,
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          child: Icon(Icons.photo),
                         )
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: white
                            ),
                            color: bottomColor,
                          ),
                          child: IconButton(
                            onPressed:(){}, 
                            icon: const Icon(Icons.edit)
                            ),
                        )
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Text(
                     'User name',
                     style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return  Container(
                        child: ListTile(
                      title: Text(DrawerList[index]),
                      trailing: const Icon(Icons.arrow_forward_ios),
                            ),
                    );
                    
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                  itemCount: DrawerList.length
                  ),
            ),
          )
        ],
      ),
    );
  }
}