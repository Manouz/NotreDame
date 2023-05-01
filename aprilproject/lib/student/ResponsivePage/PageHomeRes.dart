// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:aprilproject/parents/Vue/desktopScreen.dart';
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
import '../view/emploiDuTemps.dart';
import '../view/noteMoyenne.dart';

import 'package:aprilproject/student/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

import 'package:aprilproject/ColorsPanel.dart';

import 'package:aprilproject/ResponsiveMethod/responsive.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../ResponsivePage/NouveauMessageRes.dart';
import '../ResponsivePage/MonExpandedRes.dart';

import '../model/programmeDuJour.dart';
import '../controller/monExpanded.dart';
import '../controller/nouveauMessageCard.dart';

/// The main application widget for this example.
class MyAppsPP extends StatelessWidget {
  /// Creates a const main application widget.
  const MyAppsPP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyHomePage(),
    );
  }
}

/// Creates a basic adaptive page with navigational elements and a body using
/// [AdaptiveScaffold].
class MyHomePage extends StatefulWidget {
  /// Creates a const [MyHomePage].
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTab = 0;

  // #docregion Example
  @override
  Widget build(BuildContext context) {
    // Define the children to display within the body at different breakpoints.
    final List<Widget> children = <Widget>[
      for (int i = 0; i < 10; i++)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: const Color.fromARGB(255, 255, 201, 197),
            height: 400,
            child: InkWell(onTap: () {
              Navigator.pop(context);
            }),
          ),
        )
    ];

    return AdaptiveScaffold(
      // An option to override the default breakpoints used for small, medium,
      // and large.

      leadingExtendedNavRail: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.amber,
            child: Text("Angela Lu"),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text("Angela Lu"),
          const SizedBox(
            height: 5,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Se deconnecter")),
          const SizedBox(
            height: 5,
          ),
          const Divider()
        ],
      ),
      leadingUnextendedNavRail: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.amber,
            child: Text("Angela Lu"),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text("Angela Lu"),
          const SizedBox(
            height: 5,
          ),
          TextButton(onPressed: () {}, child: const Text("Se deconnecter")),
          const SizedBox(
            height: 5,
          ),
          const Divider()
        ],
      ),
      extendedNavigationRailWidth: 194,
      drawerBreakpoint: const WidthPlatformBreakpoint(begin: 0, end: 800),
      smallBreakpoint: const WidthPlatformBreakpoint(end: 800),
      // mediumBreakpoint: const WidthPlatformBreakpoint(begin: 700, end: 1000),
      mediumBreakpoint: const WidthPlatformBreakpoint(begin: 800, end: 800),
      largeBreakpoint: const WidthPlatformBreakpoint(begin: 801),
      bodyRatio: 1 / 100,
      useDrawer: true,
      selectedIndex: _selectedTab,
      onSelectedIndexChange: (int index) {
        setState(() {
          _selectedTab = index;
        });
      },
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(Icons.dashboard_outlined),
          selectedIcon: Icon(Icons.dashboard),
          label: 'Tableau de bord',
        ),
        NavigationDestination(
          icon: Icon(Icons.calendar_month_outlined),
          selectedIcon: Icon(Icons.calendar_month),
          label: 'Emplois du temps',
        ),
        NavigationDestination(
          icon: Icon(Icons.edit_note_outlined),
          selectedIcon: Icon(Icons.edit_note),
          label: 'Notes',
        ),
        NavigationDestination(
          icon: Icon(Icons.calculate_outlined),
          selectedIcon: Icon(Icons.calculate),
          label: 'Moyennes',
        ),
      ],
      // body: (_) => GridView.count(crossAxisCount: 2, children: children),
      body: AdaptiveScaffold.emptyBuilder,
      smallBody: (_) => ListView.builder(
        itemCount: children.length,
        itemBuilder: (_, int idx) => children[idx],
      ),
      // Define a default secondaryBody.
      secondaryBody: (_) => const StudMainBox(),
      // Override the default secondaryBody during the smallBreakpoint to be
      // empty. Must use AdaptiveScaffold.emptyBuilder to ensure it is properly
      // overridden.
      smallSecondaryBody: AdaptiveScaffold.emptyBuilder,
    );
  }
// #enddocregion
}

class StudMainBox extends StatefulWidget {
  const StudMainBox({super.key});

  @override
  State<StudMainBox> createState() => _StudMainBox();
}

class _StudMainBox extends State<StudMainBox> with TickerProviderStateMixin {
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Programme du jour",
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            color: colorBlue,
            height: 200,
            alignment: Alignment.center,
            child: GridView.count(
                childAspectRatio: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  ProgrammeMatiere(matiere: "Anglais", heure: "08h-09h"),
                  ProgrammeMatiere(matiere: "Mathématiques", heure: "09h-11h"),
                  ProgrammeMatiere(matiere: "Histoire & Géo", heure: "10h-11h"),
                  ProgrammeMatiere(
                      matiere: "Physique-Chimie", heure: "13h30-15h"),
                  ProgrammeMatiere(
                    matiere: "Français",
                    heure: "15h-17h",
                  ),
                  ProgrammeMatiere(matiere: "EPS", heure: "17h-18h"),
                ]),
          ),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: nouvaeuxMessageCardRes(
                      monNouveauMessage: monNouveauMessage)),
              Flexible(
                  flex: 1, child: monExpandedRes(monExamAvenir: monExamAvenir))
            ],
          )
        ]),
      ),
    );
  }
}

class ProgrammeMatiere extends StatelessWidget {
  String matiere;
  String heure;
  ProgrammeMatiere({super.key, required this.matiere, required this.heure});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: AutoSizeText(
          matiere,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          maxLines: 1,
        ),
        subtitle: AutoSizeText(
          heure,
          style: TextStyle(
            fontSize: 15,
          ),
          maxLines: 1,
        ),
        trailing: Icon(
          Icons.book,
          color: Colors.green,
          size: 40,
        ),
      ),
    );
  }
}
