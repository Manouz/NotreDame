import 'package:aprilproject/parents/Vue/acceuil.dart';
import 'package:aprilproject/student/ResponsivePage/PageHomeRes.dart';
import 'package:flutter/material.dart';
import 'package:aprilproject/Professeur/HomePage.dart';
import "package:aprilproject/Professeur/ProgramOfDay.dart";
import 'package:aprilproject/Professeur/responsive_layout.dart';
import 'package:aprilproject/Professeur/TabletHomePage.dart';
import 'package:aprilproject/Professeur/MobileHomePage.dart';

import 'package:aprilproject/parents/Vue/MobileScreen.dart';
import 'package:aprilproject/parents/Vue/TabletScreen.dart';
import 'package:aprilproject/parents/Vue/desktopScreen.dart';
import 'package:aprilproject/parents/Vue/Controleur/responsivelayout.dart';

import 'student/view/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        // home: ResponsiveLayout(
        //     // Platform professeur
        //     mobileBody: const MobileHomePage(),
        //     tabletBody: const TabletHomePage(),
        //     desktopBody: const HomePage()));
        //ok
        // home: ResponsiveLayouts(
        //   mobileScaffold: MobileScaffold(),
        //   tabletScaffold: TabletScaffold(),
        //   desktopScaffold: DesktopScaffold(),
        // ));
        // home: Acceuil());
        // home: DesktopScaffold());
        home: const MyHomePage());
  }
}
