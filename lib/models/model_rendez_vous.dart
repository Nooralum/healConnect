// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class ModelRendezVous {
  String nomService;
  String nomDocteur;
  String iconService;
  Widget dateRendezVous;
  ModelRendezVous({
    required this.nomService,
    required this.nomDocteur,
    required this.iconService,
    required this.dateRendezVous,
  });
}
