import 'package:Healconnect/constant.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  static const String id = '';
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Text(
              "Mon Compte",
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            accountContainer(titletxt: 'Noura Diop',txt: 'xxxx@gmail.com',),
            SizedBox(height: 10,),
            const Text(
              'Gestion Profils Externe',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 34, 124, 190),
                decoration: TextDecoration.underline
              ),
              ),
              const SizedBox(height: 10,),
             Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)
              ),
              child: const ListTile(
                leading: Icon(Icons.group_add, size: 30,),
                title: Text('Ajouter un membre'),
              ),
            ),
           const SizedBox(height: 10,),
           const Text(
            'Profils Créés',
             style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 34, 124, 190),
                decoration: TextDecoration.underline
              ),
            ),
            const SizedBox(height: 10,),
            const accountContainer(titletxt: 'Fall Junior',txt: 'Enfant',),
            const SizedBox(height: 10,),
            const accountContainer(titletxt: 'Mariam Diop',txt: 'Mère',),
          ],
        ),
      ),


    );
  }
}

class accountContainer extends StatelessWidget {
  const accountContainer({
    super.key, required this.txt, required this.titletxt,
  });
  final String txt;
  final String titletxt;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15)
      ),
      child: ListTile(
        leading: const Icon(Icons.account_circle, size: 30,),
        title: Text(titletxt),
        subtitle: Text(txt),
        trailing: const Icon(Icons.edit)
      ),
    );
  }
}