// import 'dart:ffi';

import 'package:aprilproject/Professeur/ConnectedProfil.dart';
import 'package:aprilproject/Professeur/Message/user_model.dart';
import 'package:flutter/material.dart';
import 'package:aprilproject/Professeur/ProgramOfDay.dart';
import 'package:aprilproject/Professeur/TabletHomePage.dart';
import 'package:aprilproject/Professeur/MainBox.dart';
import 'package:aprilproject/Professeur/Calendar.dart';
import 'package:aprilproject/Professeur/AttributionNotes.dart';
import 'package:aprilproject/Professeur/AttributionMoyennes.dart';
import 'package:aprilproject/Professeur/Message/chat_screen.dart';
import 'package:aprilproject/Professeur/Message/home_screen.dart';
import 'package:aprilproject/Professeur/Message/home_screen copy.dart';
import 'package:aprilproject/Professeur/HeadingPage.dart';
import 'PageHomeRes.dart';

class HomePageStud extends StatefulWidget {
  const HomePageStud({super.key});

  @override
  State<HomePageStud> createState() => _HomePageStud();
}

class _HomePageStud extends State<HomePageStud> with TickerProviderStateMixin {
  TabController? tabController;
  int index = 0;

  void _tabListener() {
    setState(() {
      index = tabController!.index;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController!.addListener(_tabListener);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.removeListener(_tabListener);
    tabController!.dispose();
  }

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 235, 235),
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            elevation: 0.0,
            pinned: false,
            backgroundColor: Color.fromARGB(255, 25, 124, 204),
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(flex: 3, fit: FlexFit.tight, child: HeadingText()),
                    Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: InformationHeaging()),
                  ],
                ),
                centerTitle: true,
                titlePadding: EdgeInsets.all(10)),
          ),
          SliverAppBar(
            automaticallyImplyLeading: false,
            elevation: 0.0,
            pinned: true,
            toolbarHeight: 70,
            backgroundColor: Color.fromARGB(255, 203, 203, 203),
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: ConnectedProfil(),
                ),
                Flexible(
                  flex: 4,
                  fit: FlexFit.loose,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: TabBar(
                        controller: tabController,
                        isScrollable: true,
                        labelPadding: EdgeInsets.all(14.0),
                        unselectedLabelColor: Color.fromARGB(255, 0, 0, 0),
                        indicator: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        tabs: [
                          Row(children: [
                            Text("Emplois du temps"),
                            Icon(Icons.date_range)
                          ]),
                          Row(children: [
                            Text("Attributions des notes"),
                            Icon(Icons.edit_note)
                          ]),
                          Row(children: [
                            Text("Calcul des moyennes"),
                            Icon(Icons.calculate_outlined)
                          ]),
                          Row(children: [
                            Text("Messagerie"),
                            Icon(Icons.mail_outlined)
                          ]),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 800,
              child: Container(
                alignment: Alignment.bottomRight,
                color: Color.fromARGB(255, 226, 226, 226),
                child: Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // Flexible(
                      //     flex: 1, fit: FlexFit.loose, child: ProgramDay()),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ProgramDay(),
                                SizedBox(
                                    height: 500,
                                    child: ListViewBuilder(
                                      resp: RespSwitch.desktop,
                                    )),
                              ],
                            ),
                          )),
                      SizedBox(
                          width:
                              10), // the principal widget which display main menu
                      Flexible(
                        flex: 3,
                        fit: FlexFit.loose,
                        child: TabBarView(controller: tabController, children: [
                          MainBox(color: Colors.white, child: HomePageStud()),
                          MainBox(color: Colors.white, child: GlobalNote()),
                          MainBox(color: Colors.white, child: AttribMoy()),
                          MainBox(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Flexible(flex: 2, child: HomeScreenCopy()),
                                  Flexible(
                                      flex: 3,
                                      child: ChatScreen(user: DiopFatoumata))
                                ],
                              )),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
