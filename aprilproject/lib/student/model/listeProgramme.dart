
import 'package:aprilproject/student/model/programmeDuJour.dart';
import 'package:flutter/material.dart';

class BdProgramme {
  List<ProgrammeDuJour> listeDuPrograme = [
    ProgrammeDuJour(heure: "08H-09H", icones: Icons.book, matiere: "Anglais"),
    ProgrammeDuJour(
        heure: "90H-11H", icones: Icons.numbers, matiere: "Mathématique"),
    ProgrammeDuJour(
        heure: "11h-12H",
        icones: Icons.explore_rounded,
        matiere: "Histoire&Géo"),
    ProgrammeDuJour(
        heure: "13H30-15H",
        icones: Icons.hot_tub_outlined,
        matiere: "Physique-Ch"),
    ProgrammeDuJour(
        heure: "15H-17H", icones: Icons.edit_document, matiere: "Français"),
    ProgrammeDuJour(heure: "17H-18H", icones: Icons.sports, matiere: "EPS")
  ];
}
