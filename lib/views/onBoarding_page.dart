import 'package:flutter/material.dart';

import '../controllers/constant.dart';
import '../controllers/monElevatedButton.dart';
import 'Authenticate/connexion_patient_docteur.dart';

class OnBoarding extends StatefulWidget {
  static const String id = 'OnBording';
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
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
          Column(children: [
            const Padding(
              padding: EdgeInsets.only(top: 70.0, right: 180.0),
              child: Text(
                "Bienvenue !",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
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
          ]),
          Padding(
            padding: const EdgeInsets.only(
                top: 200.0, left: 20.0, right: 20.0, bottom: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.7,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/sante1.png"),
                          fit: BoxFit.cover)),
                ),
                const Text(
                  "Gagnez du temps et evitez les déplacements unitiles en utilisant notre application de consultation medicale.",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                MonElevatedButton(
                  backgroundColor: kColor,
                  text: 'Commencer',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                const PatientOrDoctorPage())));
                  },
                  colorText: Colors.white,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
