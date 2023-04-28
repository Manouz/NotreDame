import 'package:flutter/material.dart';

import '../model/programmeDuJour.dart';

class ProgrammeDuJourCard extends StatelessWidget {
  const ProgrammeDuJourCard({
    super.key,
    required this.monProgrameDuJour,
  });

  final List<ProgrammeDuJour> monProgrameDuJour;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                childAspectRatio: 4.0,
                crossAxisCount: 3),
            itemCount: monProgrameDuJour.length,
            itemBuilder: (BuildContext context, int index) {
              final program = monProgrameDuJour[index];
              return Container(
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: ListTile(
                  subtitle: Text(program.heure),
                  title: Text(
                    program.matiere,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  trailing: Icon(
                    program.icones,
                    color: Colors.green,
                    size: 50,
                  ),
                ),
              );
            },
          ),
        ));
  }
}
