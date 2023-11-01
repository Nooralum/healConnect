import 'package:flutter/material.dart';
import 'package:healconnect/constant.dart';

import '../model_constante_medicale.dart';
import '../model_personne.dart';

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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Health connect",
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
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
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: size.width - 90,
                height: size.height / 7,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(41, 235, 232, 232),
                    border: Border.all(color: kBgroundBlue, width: 1.1),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
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
              const SizedBox(
                height: 20.0,
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
              const SizedBox(
                height: 10.0,
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
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/logos/cardio.png',
                                      color: kBgroundBlue,
                                      height: 50,
                                    ),
                                    Text(
                                      "${liste2[index].tensionA}/6 TA",
                                      style:
                                          const TextStyle(color: Colors.teal),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/logos/cardio.png',
                                      color: kBgroundBlue,
                                      height: 50,
                                    ),
                                    Text(
                                      "${liste2[index].poids} Kg",
                                      style:
                                          const TextStyle(color: Colors.orange),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/logos/cardio.png',
                                      color: kBgroundBlue,
                                      height: 50,
                                    ),
                                    Text("${liste2[index].temperature}°C", style:
                                          const TextStyle(color: Colors.pink))
                                  ],
                                )
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
