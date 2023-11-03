import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/constant.dart';
import '../models/model_rendez_vous.dart';

class RendezVousPage extends StatefulWidget {
  const RendezVousPage({super.key});

  @override
  State<RendezVousPage> createState() => _RendezVousPageState();
}

class _RendezVousPageState extends State<RendezVousPage> {
  DateTime? _selectedDay;
  DateTime today = DateTime.now();
  final Uri _url = Uri.parse('tel:+22556028692');
  void _onDaySelected(DateTime selectedday, DateTime focusDay) {
    setState(() {
      today = selectedday;
    });
  }

  Future<void> launchUrl1() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  List<ModelRendezVous> liste = [
    ModelRendezVous(
        nomService: "Cardiologue",
        nomDocteur: "Dr Karl Max",
        iconService: "assets/logos/cardio.png",
        dateRendezVous: const Column(
          children: [
            Text(
              'Vend',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '09h30',
              style: TextStyle(color: Colors.white),
            )
          ],
        )),
    ModelRendezVous(
        nomService: "Cardiologue",
        nomDocteur: "Dr Karl Max",
        iconService: "assets/logos/cardio.png",
        dateRendezVous: const Column(
          children: [
            Text(
              'Vend',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '09h30',
              style: TextStyle(color: Colors.white),
            )
          ],
        )),
    ModelRendezVous(
        nomService: "Cardiologue",
        nomDocteur: "Dr Karl Max",
        iconService: "assets/logos/cardio.png",
        dateRendezVous: const Column(
          children: [
            Text(
              'Vend',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '09h30',
              style: TextStyle(color: Colors.white),
            )
          ],
        )),
    ModelRendezVous(
        nomService: "Cardiologue",
        nomDocteur: "Dr Karl Max",
        iconService: "assets/logos/cardio.png",
        dateRendezVous: const Column(
          children: [Text('Vend'), Text('09h30')],
        ))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      floatingActionButton: FloatingActionButton(
        tooltip: 'Appeler un medcin',
        backgroundColor: kColorCardListeRDV,
        onPressed: () async {
          await launchUrl1();
        },
        child: const Icon(Icons.phone),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Liste des rendez-vous",
                    style: TextStyle(fontSize: 20, color: kBgroundBlue),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.height,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: kColor,
                              borderRadius: BorderRadius.circular(20)),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 12,
                          child: ListTile(
                            title: Text(
                              liste[index].nomService,
                              style: const TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            leading: Image.asset(liste[index].iconService),
                            trailing: liste[index].dateRendezVous,
                            subtitle: Text(
                              liste[index].nomDocteur,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 12.0,
                      );
                    },
                    itemCount: liste.length),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Mon calenddrier",
                    style: TextStyle(
                      fontSize: 20,
                      color: kBgroundBlue,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: TableCalendar(
                locale: 'en_US',
                rowHeight: MediaQuery.of(context).size.width / 12,
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                onDaySelected: _onDaySelected,
                startingDayOfWeek: StartingDayOfWeek.monday,
                calendarStyle: const CalendarStyle(
                  todayTextStyle: TextStyle(
                    color: Colors.white,
                  ),
                  selectedDecoration:
                      BoxDecoration(shape: BoxShape.rectangle, color: kColor),
                  outsideDaysVisible: false,
                ),
                focusedDay: today,
                firstDay: DateTime.utc(2017, 12, 10),
                lastDay: DateTime.utc(2030, 11, 20),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
