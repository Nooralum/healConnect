// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../controllers/constant.dart';
import '../models/model_constante_medicale.dart';
import '../models/model_personne.dart';

class MonCarnetAdoPage extends StatefulWidget {
  const MonCarnetAdoPage({super.key});

  @override
  State<MonCarnetAdoPage> createState() => _MonCarnetAdoPageState();
}

class _MonCarnetAdoPageState extends State<MonCarnetAdoPage> {
  List<Personne> liste = [
    Personne(nom: "OKA", person: "Jeanne", taille: 1.69, age: 35)
  ];
  List<ConstantesMedicales> liste2 = [
    ConstantesMedicales(
      poids: 80,
      temperature: 36,
      tensionA: 11,
    ),
    ConstantesMedicales(
      poids: 80,
      temperature: 36,
      tensionA: 11,
    ),
    ConstantesMedicales(
      poids: 80,
      temperature: 36,
      tensionA: 11,
    )
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      /* appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Image.asset(
              'assets/images/healthconnectAkadje-removebg-preview.png',
              height: 25,
            ),
            const Text(
              "Health connect",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  foregroundImage: AssetImage("assets/logos/utilisateur.png"),
                  radius: 20,
                ),
              ),
            ),
          )
        ],
        flexibleSpace: const Image(
          image: AssetImage('assets/images/appFont.jpg'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ), */
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Container(
                width: size.width - 90,
                height: size.height / 7,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(41, 235, 232, 232),
                    border: Border.all(color: kBgroundBlue, width: 1.1),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                  child: MonCarnetColumn(
                    text1: "Nom",
                    text2: liste[0].nom,
                    text11: "Taille",
                    text22: "${liste[0].taille} Cm",
                    text111: 'Prenom',
                    text11111: '${liste[0].age} Ans',
                    text222: liste[0].person,
                    text22222: "Âge",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Constantes Medicales",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 70,
              ),
              SizedBox(
                width: size.width,
                height: size.height / 10,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          width: size.width / 1.5,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(34, 6, 153, 133),
                              border: Border.all(color: kColorCardListeRDV),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ColumnObjetEtText(
                                  alignment: MainAxisAlignment.center,
                                  liste2: liste2,
                                  text1: Image.asset(
                                    'assets/logos/cardio.png',
                                    color: kBgroundBlue,
                                    height: 50,
                                  ),
                                  text2: "${liste2[index].tensionA}/6 TA",
                                  colorsTextAdImage: Colors.teal,
                                ),
                                ColumnObjetEtText(
                                  alignment: MainAxisAlignment.center,
                                  liste2: liste2,
                                  text1: Image.asset(
                                    'assets/logos/cardio.png',
                                    color: kBgroundBlue,
                                    height: 50,
                                  ),
                                  text2: '${liste2[index].poids} Kg',
                                  colorsTextAdImage: Colors.orange,
                                ),
                                ColumnObjetEtText(
                                  liste2: liste2,
                                  text1: Image.asset(
                                    'assets/logos/cardio.png',
                                    color: kBgroundBlue,
                                    height: 50,
                                  ),
                                  text2: '${liste2[index].temperature}°C',
                                  colorsTextAdImage: Colors.pink,
                                  alignment: MainAxisAlignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, index) {
                      return const SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: liste2.length),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Historiques des consultations",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 70,
              ),
              Expanded(
                child: Container(
                  width: size.width,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          width: size.width,
                          height: size.height / 10,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(34, 6, 153, 133),
                              border:
                                  Border.all(color: kBgroundBlue, width: 1.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      'assets/images/healconnectAkadje-removebg-preview.png'),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                ColumnObjetEtText(
                                  liste2: liste2,
                                  text1: const Text(
                                    "Dr KOUAKOU Marcel",
                                    style: TextStyle(
                                        color: kBgroundBlue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  colorsTextAdImage: kBgroundBlue,
                                  text2: 'REF N°12535',
                                  alignment: MainAxisAlignment.spaceBetween,
                                ),
                                const Spacer(),
                                ColumnObjetEtText(
                                  liste2: liste2,
                                  text1: const Text(
                                    "09/10/2023",
                                    style: TextStyle(
                                        color: kBgroundBlue, fontSize: 15),
                                  ),
                                  colorsTextAdImage: kBgroundBlue,
                                  text2: '10h15',
                                  alignment: MainAxisAlignment.spaceBetween,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 10.0,
                        );
                      },
                      itemCount: 8),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ColumnObjetEtText extends StatelessWidget {
  const ColumnObjetEtText({
    Key? key,
    required this.text1,
    required this.text2,
    required this.liste2,
    required this.colorsTextAdImage,
    required this.alignment,
  }) : super(key: key);
  final Widget text1;
  final String text2;
  final Color colorsTextAdImage;
  final MainAxisAlignment alignment;

  final List<ConstantesMedicales> liste2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: alignment,
      children: [
        text1,
        Text(
          text2,
          style: TextStyle(color: colorsTextAdImage),
        )
      ],
    );
  }
}

/*  Image.asset(
          'assets/logos/cardio.png',
          color: kBgroundBlue,
          height: 50,
          "${liste2[index].tensionA}/6 TA"
        ), */

class MonCarnetColumn extends StatelessWidget {
  const MonCarnetColumn({
    super.key,
    required this.text1,
    required this.text2,
    required this.text11,
    required this.text22,
    required this.text111,
    required this.text222,
    required this.text11111,
    required this.text22222,
  });

  final String text1;
  final String text2;
  final String text11;
  final String text22;

  final String text111;
  final String text222;
  final String text11111;
  final String text22222;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CarnetColumn2(text1: text1, text2: text2),
            CarnetColumn2(text1: text11, text2: text22)
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CarnetColumn2(text1: text111, text2: text222),
            CarnetColumn2(text1: text11111, text2: text22222)
          ],
        )
      ],
    );
  }
}

class CarnetColumn2 extends StatelessWidget {
  const CarnetColumn2({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 15.0),
        ),
        Text(
          text2,
          style: const TextStyle(
              color: kBgroundBlue, fontWeight: FontWeight.bold, fontSize: 15.0),
        )
      ],
    );
  }
}
