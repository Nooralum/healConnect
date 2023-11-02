import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../monButton_connexion_social.dart';
import '../../monElevatedButton.dart';
import '../../monTextField.dart';
import 'inscription_page2.dart';

class InscriptionPage1 extends StatefulWidget {
  const InscriptionPage1({super.key});

  @override
  State<InscriptionPage1> createState() => _InscriptionPage1State();
}

class _InscriptionPage1State extends State<InscriptionPage1> {
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
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Text(
                    "Création de compte",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                BouttonConnexion(
                  text: 'Google',
                  imagePath: 'assets/logos/google-logo.png',
                  backgroundColor: Colors.white,
                  onTap: () {},
                  textColor: Colors.black,
                  colorBorder: Colors.black87,
                ),
                BouttonConnexion(
                  text: 'Facebook',
                  imagePath: 'assets/logos/facebook-logo.png',
                  backgroundColor: kBgroundBlue,
                  onTap: () {},
                  textColor: Colors.white,
                  colorBorder: kBgroundBlue,
                ),
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  "Ou",
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Expanded(
                        child: MonTextField(
                      controller: controllerNom,
                      label: 'Nom',
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
                      label: 'Prenom',
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
                MonTextField(
                  controller: controllerEmail,
                  label: 'N° téléphone',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Champ obligatoire';
                    }
                    return null;
                  },
                  obobscureText: false,
                ),
                MonTextField(
                  controller: controllerPassword,
                  label: 'Mot de passe',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Champ obligatoire';
                    }

                    return null;
                  },
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        mot2PasseCachet = !mot2PasseCachet;
                      });
                    },
                    icon: (mot2PasseCachet)
                        ? const Icon(
                            Icons.remove_red_eye_sharp,
                            color: kBgroundBlue,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: kBgroundBlue,
                          ),
                  ),
                  obobscureText: mot2PasseCachet,
                ),
                const SizedBox(
                  height: 94,
                ),
                MonElevatedButton(
                    backgroundColor: kColor,
                    text: 'Suivant',
                    onPressed: () {
                      MaterialPageRoute route = MaterialPageRoute(
                          builder: (context) => const InscriptionPage2());
                      Navigator.push(context, route);
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
