import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aprilproject/parents/Vue/Model/model.dart';
import 'package:aprilproject/parents/Vue/acceuil.dart';
import 'package:aprilproject/parents/Vue/parents.dart';
import 'package:aprilproject/Professeur/LoginPage.dart';
import 'package:aprilproject/ColorsPanel.dart';

class DesktopScaffold extends StatelessWidget {
  DesktopScaffold({super.key});
  Color colors = Color.fromRGBO(166, 31, 56, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 63, 104),
        toolbarHeight: 80,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/notredame.png")))),
                  SizedBox(
                      width: 1,
                      child: Container(height: 80, color: Colors.white)),
                  Container(
                    child: Text(
                      "NOTRE\nDAME DE PAIX",
                      style: GoogleFonts.karma(fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => Acceuil()));
                },
                child: Center(
                    child: Text("Acceuil",
                        style: GoogleFonts.montserrat(
                            fontSize: 19, color: Colors.white))),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => Acceuil()));
                },
                child: Center(
                    child: Text("Visite Guidée",
                        style: GoogleFonts.montserrat(
                            fontSize: 19, color: Colors.white))),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => LoginPage()));
                },
                child: Center(
                    child: Text("Connexion",
                        style: GoogleFonts.montserrat(
                            fontSize: 19, color: Colors.white))),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => Acceuil()));
                },
                child: Container(
                  color: Colors.amber,
                  child: FittedBox(
                      child: Container(
                          color: colorsRed,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child:
                              // Text("Notre projet ?",
                              //     style: GoogleFonts.montserrat(
                              //         fontSize: 19, color: Colors.white)),
                              Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const SizedBox(width: 30.0, height: 50.0),
                              // const Text(
                              //   'Be',
                              //   style: TextStyle(fontSize: 19.0),
                              // ),
                              SizedBox(
                                  width: 100.0,
                                  height: 50.0,
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                      fontSize: 19,
                                      fontFamily: 'Horizon',
                                    ),
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        RotateAnimatedText('DECOUVREZ'),
                                        RotateAnimatedText('NOTRE'),
                                        RotateAnimatedText('PROJET'),
                                      ],
                                      onTap: () {
                                        print("Tap Event");
                                      },
                                    ),
                                  )),
                            ],
                          ))),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/ecole.jpg"),
                        fit: BoxFit.fill),
                  ),
                  child: Stack(
                      //alignment: AlignmentDirectional.topStart,
                      children: [
                        Align(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                borderRadius: BorderRadius.circular(2)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: 'Bienvenue sur le portail de',
                                    style: TextStyle(
                                        fontSize: 35,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' NOTRE DAME',
                                          style: TextStyle(
                                              fontSize: 40,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ])),
              SizedBox(
                height: 2,
              ),
              StatistiqueBar(),
              SizedBox(height: 20),
              Grid(),
              SizedBox(height: 1),
              Container(
                child: Text("Tableaux d'honneur",
                    style: GoogleFonts.lobsterTwo(fontSize: 70)),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Constnte(
                    img: Image.asset("assets/images/img collegienne.jpg"),
                    a: "CISSE",
                    b: "Aude Marilyne",
                    c: '1er cycle(Collège)',
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Constnte(
                    img: Image.asset("assets/images/img collegienne.jpg"),
                    a: "ABEDIE",
                    b: "Marie Oshée",
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
                img: "assets/images/im.jpg",
                a: "Je suis Auriane Zogbo ,Juriste en droit des affaires de la promotion 1970. Je fais partie des juristes  encadrés par cet établissement .",
                p: 200,
              ),
              SizedBox(
                height: 16,
              ),
              Constante(
                  img: "assets/images/OI.jpg",
                  a: "Je suis Adrien Lobo ,PDG de l’entreprise agro-Alimentaire FeelGood de la promotion 1968. Je fais partie des parents  d’élèves .",
                  p: 300),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Text("Une école où le savoir se vie...",
                    style: GoogleFonts.lobsterTwo(fontSize: 40)),
              ),
              Conteneur()
            ],
          ),
        ),
      ),
    );
  }
}

class StatistiqueBar extends StatelessWidget {
  const StatistiqueBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: colorsRed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // padding: const EdgeInsets.only(left: 100),
              child: Columnn(
                a: "20",
                b: "+",
                c: "Année d'existance",
              ),
            ),
            VerticalDivider(
              color: Colors.white,
              indent: 5,
              endIndent: 5,
            ),
            Container(
              child: Columnn(
                a: "10",
                b: "K",
                c: "Elèves formés",
              ),
            ),
            VerticalDivider(
              color: Colors.white,
              indent: 5,
              endIndent: 5,
            ),
            Container(
              child: Columnn(
                a: "61",
                b: "",
                c: 'Professeur Qualifiés',
              ),
            ),
            VerticalDivider(
              color: Colors.white,
              indent: 5,
              endIndent: 5,
            ),
            Container(
              child: Columnn(
                a: "3",
                b: "",
                c: "Instituts à travers la CI",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
