import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:aprilproject/Professeur/ConnectedProfil.dart';
import 'package:flutter/material.dart';
import 'ProgramOfDay.dart';
import 'Calendar.dart';
import 'MainBox.dart';
import 'AttributionNotes.dart';
import 'AttributionMoyennes.dart';
import 'Message/chat_screen.dart';
import 'Message/home_screen.dart';
import 'Message/home_screen copy.dart';
import 'Message/user_model.dart';
import 'HeadingPage.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key});

  @override
  State<MobileHomePage> createState() => _MobileHomePage();
}

class _MobileHomePage extends State<MobileHomePage>
    with TickerProviderStateMixin {
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
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            ConnectedProfil(),
            Divider(
              thickness: 1,
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     ProgramDay(),
            //     SizedBox(
            //         height: 200,
            //         child: ListViewBuilder(
            //           resp: RespSwitch.desktop,
            //         )),
            //   ],
            // ),
          ]),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 237, 235, 235),
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverAppBar(
            elevation: 0.0,
            pinned: false,
            backgroundColor: Color.fromARGB(255, 26, 132, 219),
            expandedHeight: 220,
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              title: Row(
                children: [
                  Flexible(fit: FlexFit.tight, child: HeadingText()),
                ],
              ),
              centerTitle: true,
              titlePadding: EdgeInsets.all(10),
            ),
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
                            Text(
                              "Emplois du temps",
                              style:
                                  TextStyle(fontSize: 14 * (1 / 1000) * width),
                            ),
                            Icon(Icons.date_range)
                          ]),
                          Row(children: [
                            Text(
                              "Attributions des notes",
                              style:
                                  TextStyle(fontSize: 14 * (1 / 1000) * width),
                            ),
                            Icon(Icons.edit_note)
                          ]),
                          Row(children: [
                            Text(
                              "Calcul des moyennes",
                              style:
                                  TextStyle(fontSize: 14 * (1 / 1000) * width),
                            ),
                            Icon(Icons.calculate_outlined)
                          ]),
                          Row(children: [
                            Text(
                              "Messagerie",
                              style:
                                  TextStyle(fontSize: 14 * (1 / 1000) * width),
                            ),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // Flexible(
                      //     flex: 1, fit: FlexFit.loose, child: ProgramDay()),
                      // Flexible(
                      //     flex: 1,
                      //     fit: FlexFit.loose,
                      //     child: Container(
                      //       padding: EdgeInsets.all(8.0),
                      //       decoration: BoxDecoration(
                      //         color: Colors.white,
                      //         borderRadius: BorderRadius.circular(15.0),
                      //       ),
                      //       child: SingleChildScrollView(
                      //         scrollDirection: Axis.vertical,
                      //         child: Row(
                      //           mainAxisSize: MainAxisSize.max,
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceAround,
                      //           children: [
                      //             // ProgramDay(),
                      //             // SizedBox(
                      //             //   height: 600,
                      //             //   child: Row(
                      //             //     children: [
                      //             //       ListViewBuilder(
                      //             //         resp: RespSwitch.tablet,
                      //             //       ),
                      //             //     ],
                      //             //   ),
                      //             // ),
                      //             Expanded(child: ProgramPatern()),
                      //             Expanded(child: ProgramPatern()),
                      //             Expanded(child: ProgramPatern()),
                      //             Text("Data")
                      //           ],
                      //         ),
                      //       ),
                      //     )),
                      // SizedBox(
                      //     width:
                      //         10), // the principal widget which display main menu
                      Flexible(
                        fit: FlexFit.loose,
                        child: TabBarView(controller: tabController, children: [
                          MainBox(color: Colors.white, child: Calendar()),
                          MainBox(
                            color: Colors.white,
                            child: GlobalNote(),
                          ),
                          MainBox(
                            color: Colors.white,
                            child: AttribMoy(),
                          ),
                          MainBox(
                            color: Colors.white,
                            child: (width > 600)
                                ? Row(
                                    children: [
                                      Flexible(
                                          flex: 2, child: HomeScreenCopy()),
                                      Flexible(
                                          flex: 3,
                                          child:
                                              ChatScreen(user: DiopFatoumata))
                                    ],
                                  )
                                : Row(
                                    children: [
                                      Flexible(
                                          flex: 2, child: HomeScreenCopy()),
                                    ],
                                  ),
                          ),
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

enum RespSwitch {
  mobile,
  tablet,
  desktop,
}
