import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aprilproject/parents/Vue/Model/model.dart';
import 'package:aprilproject/parents/Vue/acceuil.dart';
import 'package:aprilproject/parents/Vue/parents.dart';
import 'package:aprilproject/Professeur/LoginPage.dart';

class DesktopScaffold extends StatelessWidget {
  DesktopScaffold({super.key});
  Color colors = Color.fromRGBO(166, 31, 56, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/ecole.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                    //alignment: AlignmentDirectional.topStart,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                  image: AssetImage(
                                      "assets/images/notredame.png")),
                              SizedBox(
                                  width: 1,
                                  child: Container(
                                      height: 80, color: Colors.black)),
                              SizedBox(
                                  height: 90,
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, left: 4),
                                      child: Text(
                                        "NOTRE\nDAME DE PAIX",
                                        style: GoogleFonts.karma(fontSize: 26),
                                      ),
                                    ),
                                  ])),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  width: 140,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: colors,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (Context) => Acceuil()));
                                    },
                                    child: Center(
                                        child: Text("Acceuil",
                                            style: GoogleFonts.kalam(
                                                fontSize: 18,
                                                color: Colors.white))),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  width: 140,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: colors,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (Context) => Acceuil()));
                                    },
                                    child: Center(
                                        child: Text("Visite Guidée",
                                            style: GoogleFonts.kalam(
                                                fontSize: 18,
                                                color: Colors.white))),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  width: 140,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: colors,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (Context) =>
                                                  LoginPage()));
                                    },
                                    child: Center(
                                        child: Text("Connexion",
                                            style: GoogleFonts.kalam(
                                                fontSize: 18,
                                                color: Colors.white))),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Container(
                            width: 900,
                            height: 450,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                borderRadius: BorderRadius.circular(25)),
                            child: Stack(
                              children: [
                                Text(
                                  "Bienvenu au temple\noù travailler devient\naussi",
                                  style: GoogleFonts.lobsterTwo(
                                      fontSize: 120, color: Colors.white),
                                ),
                                Stack(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 238, top: 300),
                                    child: DefaultTextStyle(
                                      style:
                                          GoogleFonts.lobsterTwo(fontSize: 120),
                                      child: AnimatedTextKit(
                                        animatedTexts: [
                                          TyperAnimatedText('interessant'),
                                        ],
                                        repeatForever: true,
                                      ),
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ),
                      )
                    ])),
            SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: BoxDecoration(
                color: colors,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Columnn(a: "100 k+", b: "Bacheliers"),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  SizedBox(
                      width: 3 / 2,
                      child: Container(height: 60, color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Columnn(a: "100 k+", b: "Bacheliers"),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  SizedBox(
                      width: 3 / 2,
                      child: Container(height: 60, color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Columnn(a: "100 k+", b: "Bacheliers"),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  SizedBox(
                      width: 3 / 2,
                      child: Container(height: 60, color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Columnn(a: "100 k+", b: "Bacheliers"),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Grid(),
            //SizedBox(height: 1),
            Center(
              child: Text("Tableaux d'honneur",
                  style: GoogleFonts.lobsterTwo(fontSize: 70)),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Constnte(
                  img: Image.asset("assets/images/img collegienne.jpg"),
                  a: "LOLA",
                  b: "OL",
                  c: '1er cycle(Collège)',
                ),
                SizedBox(
                  width: 40,
                ),
                Constnte(
                  img: Image.asset("assets/images/img collegienne.jpg"),
                  a: "LOLA",
                  b: "OL",
                  c: '2ème cycle(Lycée)',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text("Les anciens diplômés",
                  style: GoogleFonts.lobsterTwo(fontSize: 70)),
            ),
            SizedBox(
              height: 60,
            ),
            Constante(
              img: Image.asset("assets/images/R.jpeg"),
              a: "Je suis Auriane Zogbo ,Juriste en droit des affaires de la promotion 1970. Je fais partie des juristes  encadrés par cet établissement .",
              p: 200,
            ),
            SizedBox(
              height: 16,
            ),
            Constante(
                img: Image.asset("assets/images/R.jpeg"),
                a: "Je suis Adrien Lobo ,PDG de l’entreprise agro-Alimentaire FeelGood de la promotion 1968. Je fais partie des parents  d’élèves .",
                p: 300),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Text("Une école où le savoir se vie...",
                  style: GoogleFonts.lobsterTwo(fontSize: 40)),
            ),
            SizedBox(
              height: 16,
            ),
            Conteneur()
          ],
        ),
      ),
    );
  }
}
