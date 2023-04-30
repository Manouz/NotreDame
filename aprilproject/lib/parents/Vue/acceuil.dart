import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aprilproject/parents/Vue/Model/model.dart';
import 'package:aprilproject/parents/Vue/desktopScreen.dart';
import 'package:aprilproject/Professeur/LoginPage.dart';
import 'package:aprilproject/ColorsPanel.dart';

class Acceuil extends StatelessWidget {
  Acceuil({super.key});
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
                                image: AssetImage(
                                    "assets/images/notredame.png")))),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (Context) => DesktopScaffold()));
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Text("Notre projet ?",
                          style: GoogleFonts.montserrat(
                              fontSize: 19, color: Colors.white)),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 458.0),
                  child: Container(
                    width: 830,
                    height: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/ecole.jpg"),
                          fit: BoxFit.cover),
                      //child: Image.asset()
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 39.0, top: 27),
                    padding: EdgeInsets.all(10),
                    width: 450,
                    decoration: BoxDecoration(color: colorsRed),
                    child: Text(
                      " Crée en 1970 par une communauté Catholique,Nôtre Dame de Paix est l’un des meilleurs établissement qui prône de nos jours des valeurs chrétienne et morale basés sur les saintes écritures.  ",
                      style: GoogleFonts.lobsterTwo(
                          fontSize: 40, color: Colors.white),
                    )),
              ]),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Visite guidée au sein de l’établissement",
              style: GoogleFonts.lobsterTwo(fontSize: 60),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              //width: 1200,
              //height: 1700,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(219, 217, 217, 0.5)),
              child: Column(children: [
                LigneA(
                    a: "assets/images/klc.jpg",
                    b: "Les salles de classe propre,\nsaines et confortable ,\ntoutes ses qualités pour assurer\n la suivie des aprennants"),
                LigneB(
                    a: "assets/images/klc.jpg",
                    b: "Une quantine fonctionnelle ,suivie par des nutritionnistes articuliers ,afin de servir aux apprenant des vitamines neccessaire à leur santé."),
                LigneA(
                    a: "assets/images/kntine.jpg",
                    b: "Un réfectoire  harmonisé de sorte à regrouper toute la jeunesse autour du repas de leur choix,mais qui est régit par des règles dont l’apprenant devrai s’impregner"),
                LigneB(
                    a: "assets/images/ps.jpg",
                    b: "Une grande piscine de 500 mètres où se déroules toutes compétitions liés à la natation et les cours de natation académique.Chaque années nous organisons une compétion régionale au sein de l’établissement"),
                LigneA(
                    a: "assets/images/terrain.jpg",
                    b: "Un terrain de sport de 500 mètres où se déroules certaines activités sportives que sont les compétitions inter classe et extra école de football et les cours de sport académique."),
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LigneA(
              a: "assets/images/educateurs.jpg",
              b: 'Nous mettons en oeuvre tout nôtre savoir faire éducationnel pour que nos apprenants soient motivés et donnent le meilleur d’eux.\n                  Signature des encadreurs'),
          SizedBox(
            height: 20,
          ),
          Conteneur()
        ])));
  }
}
       
//       ),
//       Container(
//           width: 900, height: 800, child: Image.asset("assets/ecole.jpg")),
//       Stack(children: [
//         Padding(
//           padding: const EdgeInsets.only(top: 80.0),
//           child: Container(
//             width: 400,
//             height: 350,
//             decoration: BoxDecoration(color: Colors.red),
//             child: Text(
//               "Crée en 1970 par une communauté Catholique ,Nôtre Dame de Paix est l’un des meilleurs établissement qui prône de nos jours des valeurs chrétie-nne et morale basés sur les saintes écritures. ",
//               style: GoogleFonts.karma(fontSize: 30),
//             ),
//           ),
//         ),
//       ]),
//       Container(
//           width: 900, height: 800, child: Image.asset("assets/ecole.jpg")),
//       SizedBox(
//         height: 10,
//       ),
//       Center(
//         child: Text(
//           "Visite guidée au sein de l’établissement",
//           style: GoogleFonts.lobsterTwo(fontSize: 60),
//         ),
//       ),
//       SizedBox(
//         height: 10,
//       ),
//       Center(
//         child: Container(
//           width: 1200,
//           height: 900,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(30), color: Colors.grey),
//         ),
//       ),
//       SizedBox(
//         height: 20,
//       ),
//       Row(),
//       SizedBox(
//         height: 20,
//       ),
//       Conteneur()
//     ])));
//   }
// }

// // children: [
// //             Container(
// //               decoration: const BoxDecoration(
// //                   image: DecorationImage(
// //                 image: AssetImage("assets/ecole.jpg"),
// //                 fit: BoxFit.cover,
// //               )),
// //               width: double.infinity,
// //               height: 600,
// //               color: Colors.amber,
// //             ),] ),
// //       ),
// //             //Image.asset("assets/ecole.jpg",width: double.infinity),
// //             // Container(
// //             //   decoration: const BoxDecoration(
// //             //       image: DecorationImage(
// //             //     colorFilter: ColorFilter.mode(
// //             //         Color.fromRGBO(0, 0, 0, 0.29), BlendMode.darken),
// //             //     image: AssetImage("imgs/culture.jpg"),
// //             //     fit: BoxFit.cover,
// //             //   )),
// //             //   width: double.infinity,
// //             //   height: 600,
// //             //   child: Stack(
// //             //     alignment: AlignmentDirectional.topStart,
// //             //     children: [
// //             //       Row(
// //             //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             //         children: [
// //             //           Padding(
// //             //             padding: const EdgeInsets.only(left: 20),
// //             //             child: Text(
// //             //               "Ayoka",
// //             //               style: GoogleFonts.abrilFatface(
// //             //                   fontSize: 60, color: Colors.yellow),
// //             //             ),
// //             //           ),
// //             //           GestureDetector(
// //             //             onTap: () {
// //             //               Navigator.push(
// //             //                   context,
// //             //                   MaterialPageRoute(
// //             //                       builder: (builder) => TabletScaffold()));
// //             //             },
// //             //             child: Padding(
// //             //               padding: const EdgeInsets.only(right: 30),
// //             //               child: Container(
// //             //                 width: 210,
// //             //                 height: 40,
// //             //                 decoration: BoxDecoration(
// //             //                   color: Color.fromARGB(151, 76, 175, 79),
// //             //                   borderRadius: BorderRadius.circular(30),
// //             //                 ),
// //             //                 child: Center(
// //             //                     child: Text("CONNEXION",
// //             //                         style: GoogleFonts.inter(
// //             //                             fontSize: 30, color: Colors.yellow))),
// //             //               ),
// //             //             ),
// //             //           ),
// //             //         ],
// //             //       ),
// //             //       // Center(
// //             //       //   child: Container(
// //             //       //     width: 899,
// //             //       //     height: 350,
// //             //       //     decoration: BoxDecoration(
// //             //       //         color: const Color.fromARGB(83, 255, 235, 59),
// //             //       //         borderRadius: BorderRadius.circular(20)),
// //             //       //     child: Column(
// //             //       //       children: [
// //             //       //         Center(
// //             //       //           child: Text(
// //             //       //             " VOUS ÊTES FRIANT DE FRUITS? ",
// //             //       //             style: GoogleFonts.inter(
// //             //       //                 color: Color.fromRGBO(33, 101, 77, 1),
// //             //       //                 fontSize: 50,
// //             //       //                 fontWeight: FontWeight.w400),
// //             //       //           ),
// //             //       //         ),
// //             //       //         Text(
// //             //       //           " VOUS ÊTES FRIANT DE LEGUMES? ",
// //             //       //           style: GoogleFonts.inter(
// //             //       //               color: Color.fromRGBO(33, 101, 77, 1),
// //             //       //               fontSize: 50,
// //             //       //               fontWeight: FontWeight.w400),
// //             //       //         ),
// //             //       //         Text(
// //             //       //           "LAISSEZ VOUS IMPRESSIONNER",
// //             //       //           style: GoogleFonts.inter(
// //             //       //               color: Color.fromRGBO(33, 101, 77, 1),
// //             //       //               fontSize: 50,
// //             //       //               fontWeight: FontWeight.w400),
// //             //       //         ),
// //             //       //         Text(
// //             //       //           "PAR NOTRE AGRICULTURE BIO",
// //             //       //           style: GoogleFonts.inter(
// //             //       //               color: Color.fromRGBO(33, 101, 77, 1),
// //             //       //               fontSize: 50,
// //             //       //               fontWeight: FontWeight.w400),
// //             //       //         ),
// //             //       //         Text(
// //             //       //           "DEPUIS 1770",
// //             //       //           style: GoogleFonts.inter(
// //             //       //               color: Colors.white,
// //             //       //               fontSize: 50,
// //             //       //               fontWeight: FontWeight.w400),
// //             //       //         )
// //             //       //       ],
// //             //       //     ),
// //             //       //   ),
// //             //       // )
// //             //     ],
// //             //   ),
// //             // ),
          
       /*import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Parents extends StatelessWidget {
  const Parents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Container(
              width: double.infinity,
              height: 70,
              color: Colors.amber,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 80.0, top: 14),
                              child: Text(
                                "Bienvenu Mr/Mme Sarr",
                                style: GoogleFonts.lobsterTwo(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.logout_outlined,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          child: ClipRRect(
                            child: Container(
                              width: 300,
                              height: 500,
                              color: Colors.amber,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                width: 600,
                                height: 10,
                                color: Colors.amber,
                              ),
                            ),
                            Container(
                              width: 600,
                              height: 100,
                              color: Colors.amber,
                            )
                          ],
                        )
                      ],
                    )
                  ])),
        ));
  }
}
 */