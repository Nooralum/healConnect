import 'package:Healconnect/views/bottomNavBar.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

import '../monElevatedButton.dart';
import '../monTextField.dart';

class InscriptionPage2 extends StatefulWidget {
  const InscriptionPage2({super.key});

  @override
  State<InscriptionPage2> createState() => _InscriptionPage2State();
}

class _InscriptionPage2State extends State<InscriptionPage2> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController controllerEmail;
  late TextEditingController controllerPassword;
  late TextEditingController controllerPrenom;
  late TextEditingController controllerNum;
  late TextEditingController controllerNom;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerEmail = TextEditingController();
    controllerPassword = TextEditingController();
    controllerNum = TextEditingController();
    controllerPrenom = TextEditingController();
    controllerNom = TextEditingController();
    valeurRadioSelectione = radioItemList.first;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controllerEmail.dispose();
    controllerPassword.dispose();
    controllerEmail.dispose();
    controllerPrenom.dispose();
    controllerNom.dispose();
  }

  bool mot2PasseCachet = true;
  List<String> radioItemList = [
    ' Masculin',
    'Feminin',
  ];

  String? valeurRadioSelectione;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "Inscription",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
            ),
            Image.asset(
              'assets/images/stethoscope-removebg-preview.png',
              height: 50,
            )
          ],
        ),
        flexibleSpace: const Image(
          image: AssetImage('assets/images/appFont.jpg'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: kBgrdBody,
      body: Form(
        key: formKey,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 75.0),
                  child: Text(
                    "Complètez votre profil",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Text(
                    "Veuillez renseigner quelques informations utiles à la création de votre dossier medical",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Genre :",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: radioItemList
                        .map((data) => Row(
                              children: [
                                Radio(
                                  value: data,
                                  groupValue: valeurRadioSelectione,
                                  onChanged: (val) {
                                    setState(() {
                                      valeurRadioSelectione = val!;
                                    });
                                  },
                                ),
                                Text(data),
                              ],
                            ))
                        .toList(),
                  ),
                ),
                MonTextField(
                  suffixIcon: IconButton(
                      onPressed: () {
                        /* DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          minTime: DateTime(2020, 1, 1),
                          maxTime: DateTime(2030, 12, 31),
                          onConfirm: (date) {
                            print('confirm $date');
                          },
                          currentTime: DateTime.now(),
                        ); */
                      },
                      icon: const Icon(
                        Icons.calendar_month,
                        color: kBgroundBlue,
                      )),
                  controller: controllerEmail,
                  label: 'Date de naissance',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Champ obligatoire';
                    }

                    return null;
                  },
                  obobscureText: false,
                ),
                Row(
                  children: [
                    Expanded(
                        child: MonTextField(
                      controller: controllerNom,
                      label: 'Poids (Kg)',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Champ obligatoire';
                        }

                        return null;
                      },
                      obobscureText: false,
                    )),
                    Expanded(
                        child: MonTextField(
                      controller: controllerPrenom,
                      label: 'Taille (Cm)',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Champ obligatoire';
                        }

                        return null;
                      },
                      obobscureText: false,
                    ))
                  ],
                ),
                const SizedBox(
                  height: 182,
                ),
                MonElevatedButton(
                    backgroundColor: kColor,
                    text: 'Suivant',
                    onPressed: () {
                      setState(() {
                        NavBarBottom();
                      });
                    },
                    colorText: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
