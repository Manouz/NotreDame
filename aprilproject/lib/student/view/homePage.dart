
import 'package:aprilproject/student/view/tableau2Bord.dart';
import 'package:flutter/material.dart';

import '../model/classExam.dart';
import '../controller/drawer.dart';
import '../model/listeExamens.dart';
import '../model/listeNouveauxMessage.dart';
import '../model/listeProgramme.dart';

import '../model/nouveauxMessage.dart';
import '../model/programmeDuJour.dart';
import '../model/tabBar.dart';
import 'emploiDuTemps.dart';
import 'noteMoyenne.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> with TickerProviderStateMixin {
  late TabController _tabController;

  List<tabBare> typesAppB = [
    tabBare(
        onglet: "Tableau de bord",
        contenu: TableauDeBord(
          monExamAvenir: BdExamensAvenir().ListExamAvenir,
          monNouveauMessage: DbNouveauxMessage().listeNouveauxMessage,
          monProgrameDuJour: BdProgramme().listeDuPrograme,
        )),
    tabBare(onglet: "Emploi du temps", contenu: const EmploiDuTelpsStudents()),
    tabBare(onglet: "Notes & Moyennes", contenu: NoteEtMoyenne())
  ];
  List<ProgrammeDuJour> monProgrameDuJour = BdProgramme().listeDuPrograme;
  List<NouveauxMessage> monNouveauMessage =
      DbNouveauxMessage().listeNouveauxMessage;
  List<ExamenAvenir> monExamAvenir = BdExamensAvenir().ListExamAvenir;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: typesAppB.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          const monDrawer(),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(),
                DefaultTabController(
                    length: typesAppB.length,
                    child: Container(
                      width: 600,
                      height: 60,
                      child: TabBar(
                          controller: _tabController,
                          indicatorColor: const Color.fromARGB(255, 1, 44, 40),
                          labelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 5.0,
                          tabs: typesAppB
                              .map((type) => Tab(
                                    text: type.onglet,
                                  ))
                              .toList()),
                    )),
                const SizedBox(
                  width: 80,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 6,
                  height: MediaQuery.of(context).size.height / 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey)),
                  child: const TextField(
                      decoration: InputDecoration(
                          hintText: "recherche",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))))),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Expanded(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 290.0),
            child: TabBarView(
                controller: _tabController,
                children:
                    typesAppB.map((type) => Tab(child: type.contenu)).toList()),
          )
        ]),
      ),
    );
  }
}
