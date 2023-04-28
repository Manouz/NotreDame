import 'package:flutter/material.dart';

class NouveauxMessage {
  String auteurDuMessage;
  String dateEtHeurreMssg;
  String premierePhraseMss;
  String messageComplet;
  String imageAuteur;

  NouveauxMessage(
      {required this.auteurDuMessage,
      required this.dateEtHeurreMssg,
      required this.messageComplet,
      required this.premierePhraseMss,
      required this.imageAuteur});

  String getImage() => 'images/$imageAuteur';
}
