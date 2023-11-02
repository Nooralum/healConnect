import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/constant.dart';
import '../../controllers/monElevatedButton.dart';
import 'connexion_page.dart';
import 'inscription_page1.dart';

class PatientOrDoctorPage extends StatefulWidget {
  const PatientOrDoctorPage({super.key});

  @override
  State<PatientOrDoctorPage> createState() => _PatientOrDoctorPageState();
}

class _PatientOrDoctorPageState extends State<PatientOrDoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/appFont.jpg"),
                fit: BoxFit.cover)),
        child: Stack(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 100.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     const Text(
                      "Heal",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Image.asset(
                      'assets/images/sante2.png',
                      height: 50,
                    )
                  ],
                ),
              ),
              const Text(
                "Connect",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const Spacer(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/sante3.png",
                  height: MediaQuery.of(context).size.width,
                ),
                const Text(
                  "Connectez-vous à votre santé.",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    bottom: MediaQuery.of(context).size.width / 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MonElevatedButton(
                      backgroundColor: kColor,
                      text: "Inscription",
                      onPressed: () {
                        MaterialPageRoute route = MaterialPageRoute(
                            builder: ((context) => const InscriptionPage1()));
                        Navigator.push(context, route);
                      },
                      colorText: white,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    MonElevatedButton(
                      backgroundColor: kColor,
                      text: "Connexion",
                      onPressed: () {
                        MaterialPageRoute route = MaterialPageRoute(
                            builder: ((context) => const ConnexionPage()));
                        Navigator.push(context, route);
                      },
                      colorText: white,
                    ),
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
