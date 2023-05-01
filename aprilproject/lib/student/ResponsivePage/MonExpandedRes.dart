import 'package:flutter/material.dart';

import '../model/classExam.dart';

class monExpandedRes extends StatefulWidget {
  monExpandedRes({
    super.key,
    required this.monExamAvenir,
  });

  final List<ExamenAvenir> monExamAvenir;

  @override
  State<monExpandedRes> createState() => _monExpandedResState();
}

class _monExpandedResState extends State<monExpandedRes> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
          child: const Center(
              child: Text(
            "Examen à venir",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 300,
          //color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 1,
                  child: FloatingActionButton(
                    onPressed: _scrollDownAft,
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: ListView.separated(
                      controller: _scrollController,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (contxet, index) {
                        final lexam = widget.monExamAvenir[index];
                        return Stack(children: [
                          Container(
                            height: 300,
                            width: 250,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/papier.jpeg"),
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
                          Container(
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
                          )
                        ]);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: widget.monExamAvenir.length),
                ),
                Flexible(
                  flex: 1,
                  child: FloatingActionButton(
                    onPressed: _scrollDownAft,
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  void _scrollDownAft() {
    _scrollController.animateTo(
      _scrollController.position.extentAfter,
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _scrollDownBef() {
    _scrollController.animateTo(
      _scrollController.position.extentAfter,
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
