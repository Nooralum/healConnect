import 'package:Healconnect/views/bottomNavBar.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../monButton_connexion_social.dart';
import '../monElevatedButton.dart';
import '../monTextField.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController controllerEmail;
  late TextEditingController controllerPassword;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerEmail = TextEditingController();
    controllerPassword = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controllerEmail.dispose();
    controllerPassword.dispose();
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
              "Connexion",
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
                Image.asset(
                  'assets/images/connexionSante.jpg',
                  height: 200,
                ),
                MonTextField(
                  controller: controllerEmail,
                  label: 'Email',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Champ obligatoire';
                    }
                    if (!value.contains('@')) {
                      return 'Email invalide';
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
                  height: 30,
                ),
                MonElevatedButton(
                    backgroundColor: kColor,
                    text: 'Connexion',
                    onPressed: () {
                      setState(() {
                        NavBarBottom();
                      });
                    },
                    colorText: Colors.white),
                const SizedBox(
                  height: 70,
                ),
                const Text(
                  "Ou",
                  style: TextStyle(fontSize: 20),
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
                  onTap: () {
                    
                  },
                  textColor: Colors.white,
                  colorBorder: kBgroundBlue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
