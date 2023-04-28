
import 'package:flutter/material.dart';

import '../controller/monExpanded.dart';
import '../controller/nouveauMessageCard.dart';
import '../controller/programmConatiner.dart';
import '../model/classExam.dart';
import '../model/nouveauxMessage.dart';
import '../model/programmeDuJour.dart';

class TableauDeBord extends StatelessWidget {
  const TableauDeBord({
    super.key,
    required this.monProgrameDuJour,
    required this.monNouveauMessage,
    required this.monExamAvenir,
  });

  final List<ProgrammeDuJour> monProgrameDuJour;
  final List<NouveauxMessage> monNouveauMessage;
  final List<ExamenAvenir> monExamAvenir;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      height: MediaQuery.of(context).size.height / 1.2,
      //decoration: const BoxDecoration(color: Colors.amber),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Programe du jour ",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.height / 3,
            //decoration: const BoxDecoration(color: Colors.black),
            child: ProgrammeDuJourCard(monProgrameDuJour: monProgrameDuJour),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 200.0),
                    child: Text(
                      "Nouveaux Messages",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  nouvaeuxMessageCard(monNouveauMessage: monNouveauMessage),
                ],
              ),
              monExpanded(monExamAvenir: monExamAvenir)
            ],
          ),
        ],
      ),
    );
  }
}
