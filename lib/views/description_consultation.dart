import 'package:flutter/material.dart';

import '../controllers/constant.dart';

class DescriptionConsultaionPage extends StatefulWidget {
  const DescriptionConsultaionPage(
      {super.key,
      required this.ref,
      required this.tensionA,
      required this.poids,
      required this.temperature,
      required this.age});
  final String ref;
  final String tensionA;
  final String poids;
  final String temperature;
  final String age;

  @override
  State<DescriptionConsultaionPage> createState() =>
      _DescriptionConsultaionPageState();
}

class _DescriptionConsultaionPageState
    extends State<DescriptionConsultaionPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.ref,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
                  foregroundImage:
                      AssetImage("assets/images/ppHealConnect.jpg"),
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
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: size.width,
              height: size.height / 4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/photoMOnCarnet.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            const Text(
              "Constantes Medicale",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ColumnConstanteMedicalPageRef(
                  constantesMedicales: 'Âge',
                  description: '56 ans',
                ),
                VerticalDivider(
                  thickness: 5,
                  width: 20,
                  color: noir,
                ),
                ColumnConstanteMedicalPageRef(
                  constantesMedicales: 'TA',
                  description: '11/6',
                ),
                VerticalDivider(
                  thickness: 5,
                  width: 20,
                  color: noir,
                ),
                ColumnConstanteMedicalPageRef(
                  constantesMedicales: 'Poids',
                  description: '80 kg',
                ),
                VerticalDivider(
                  thickness: 5,
                  width: 20,
                  color: noir,
                ),
                ColumnConstanteMedicalPageRef(
                  constantesMedicales: 'Température',
                  description: '36°C',
                ),
              ],
            ),
            SizedBox(
              height: size.height / 30,
            ),
            const Text(
              "Diagnostic",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Symptômes",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Diagnostic probale",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Plan de guerison suggéré",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class ColumnConstanteMedicalPageRef extends StatelessWidget {
  const ColumnConstanteMedicalPageRef({
    super.key,
    required this.constantesMedicales,
    required this.description,
  });
  final String constantesMedicales;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          constantesMedicales,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
