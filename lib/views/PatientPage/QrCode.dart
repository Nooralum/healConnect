import 'package:Healconnect/controllers/monDrawer.dart';
import 'package:Healconnect/views/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../controllers/constant.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  String data = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Text(
              "Mon Qr Code",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
            ),
            Icon(Icons.account_circle, size: 45, color: white,),
          ],
        ),
        flexibleSpace: const Image(
          image: AssetImage('assets/images/appFont.jpg'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Veuiller Scanner ce code pour charger les données du carnet',
                 style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic
                 ),
                ),
            ),
              SizedBox(height: 150,),
          Center(
            child: RepaintBoundary(
              child: QrImageView(
                data: data,
                version: QrVersions.auto,
                size: 200,
              )
            ),
            
          ),
          SizedBox(height: 20,),
          Container(
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(20, 50),
                backgroundColor: bottomColor,
              ),
              onPressed: (){}, 
              child: const Row(
                children: [
                  Icon(Icons.qr_code_scanner, color: white,),
                  SizedBox(width: 10,),
                  Text(
                    'Scanner',
                    style: TextStyle(
                      fontSize: 18,
                      color: white
                    )
                    
                    )
                ],
              )
              ),
          )
        ],
      ),
      // drawer: monDrawer(),
    );
  }
}