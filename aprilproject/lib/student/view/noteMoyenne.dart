
import 'package:flutter/material.dart';

import '../controller/premierTrimestre.dart';
import '../controller/troisiemeTrimestre.dart';
import '../model/classNoteMoyenne.dart';
import '../controller/deuxiemeTrimestre.dart';
import '../controller/mesFonctionEtConstantes.dart';
import '../controller/moyenneGA.dart';

class NoteEtMoyenne extends StatefulWidget {
  NoteEtMoyenne({super.key});

  @override
  State<NoteEtMoyenne> createState() => _NoteEtMoyenneState();
}

class _NoteEtMoyenneState extends State<NoteEtMoyenne>
    with TickerProviderStateMixin {
  late TabController _tabController1;
  
  List<NoteMoyenne> MaNoteMoyennes = [
    NoteMoyenne(
        leContenu: const premierTrim(),
        longlet: "1er Trimestre",
        laMoyenneDuTRim: const Text(
          'MOY TRIM: ...',
          style: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leRang: const Text('RANG: ...',
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold))),
    NoteMoyenne(
        leContenu: const DeuxiemeTrim(),
        longlet: "2ème Trimestre",
        laMoyenneDuTRim: const Text('MOY TRIM: ...',
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)),
        leRang: const Text('RANG: ...',
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold))),
    NoteMoyenne(
        leContenu: const TroisiemeTrim(),
        longlet: "3ème Trimestre",
        laMoyenneDuTRim: const Text('MOY TRIM: ...',
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)),
        leRang: const Text('RANG: ...',
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold))),
    NoteMoyenne(
        leContenu: MoyenneGeneraleAnnuelle(),
        longlet: "Moy G A",
        laMoyenneDuTRim: const Text('M G A: ...',
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)),
        leRang: const Text('RANG: ...',
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold))),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController1 = TabController(length: MaNoteMoyennes.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      height: MediaQuery.of(context).size.height / 1.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          DefaultTabController(
              length: MaNoteMoyennes.length,
              child: Container(
                width: 600,
                height: 60,
                child: TabBar(
                    controller: _tabController1,
                    indicatorColor: Colors.deepOrange,
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 5.0,
                    tabs: MaNoteMoyennes.map((type) => Tab(
                          text: type.longlet,
                        )).toList()),
              )),
          const Spacer(),
          Center(
              child: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 1.8,
            child: TabBarView(
                controller: _tabController1,
                children: MaNoteMoyennes.map((type) => Tab(
                      child: type.leContenu,
                    )).toList()),
          )),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                monContainerMoyenne(
                    leTextIn: TabBarView(
                        controller: _tabController1,
                        children: MaNoteMoyennes.map((type) => Tab(
                              child: type.laMoyenneDuTRim,
                            )).toList()),
                    height: 50,
                    width: 200,
                    color: Colors.transparent,
                    color1: Colors.black),
                const SizedBox(
                  width: 100.0,
                ),
                monContainerMoyenne(
                    leTextIn: TabBarView(
                        controller: _tabController1,
                        children: MaNoteMoyennes.map((type) => Tab(
                              child: type.leRang,
                            )).toList()),
                    height: 50,
                    width: 200,
                    color: Colors.transparent,
                    color1: Colors.black)
              ],
            ),
          )
        ],
      ),
    );
  }
}
