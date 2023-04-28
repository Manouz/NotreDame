import 'package:flutter/material.dart';

import '../model/classExam.dart';

class monExpanded extends StatelessWidget {
  const monExpanded({
    super.key,
    required this.monExamAvenir,
  });

  final List<ExamenAvenir> monExamAvenir;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 10,
            height: MediaQuery.of(context).size.height / 24,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: const Center(
                child: Text(
              "Examen à venir",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: MediaQuery.of(context).size.width / 5.7,
            //color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: MediaQuery.of(context).size.height / 3,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (contxet, index) {
                          final lexam = monExamAvenir[index];
                          return Stack(children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 7.2,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage("images/papier.jpeg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                child: Column(
                                  children: [
                                    Text(
                                      lexam.libeleExam,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          decoration: TextDecoration.underline),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Text(
                                      "Discipline: ${lexam.discipline}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Text(
                                      lexam.heureExam,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 160.0, left: 58),
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                    child: Text(
                                  lexam.jourExam,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                              ),
                            )
                          ]);
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 10,
                          );
                        },
                        itemCount: monExamAvenir.length),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
