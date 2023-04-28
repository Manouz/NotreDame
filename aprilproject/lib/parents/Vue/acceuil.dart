import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aprilproject/parents/Vue/Model/model.dart';
import 'package:aprilproject/parents/Vue/desktopScreen.dart';

class Acceuil extends StatelessWidget {
  Acceuil({super.key});
  Color colors = Color.fromRGBO(166, 31, 56, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: SingleChildScrollView(
            child: Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage("assets/images/notredame.png")),
            SizedBox(
                width: 1, child: Container(height: 80, color: Colors.black)),
            SizedBox(
                height: 90,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 4),
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
                    color: colors, borderRadius: BorderRadius.circular(30)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => DesktopScaffold()));
                  },
                  child: Center(
                      child: Text("Acceuil",
                          style: GoogleFonts.kalam(
                              fontSize: 18, color: Colors.white))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                width: 140,
                height: 40,
                decoration: BoxDecoration(
                    color: colors, borderRadius: BorderRadius.circular(30)),
                child: InkWell(
                  onTap: () {},
                  child: Center(
                      child: Text("Cours",
                          style: GoogleFonts.kalam(
                              fontSize: 18, color: Colors.white))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                width: 140,
                height: 40,
                decoration: BoxDecoration(
                    color: colors, borderRadius: BorderRadius.circular(30)),
                child: InkWell(
                  onTap: () {},
                  child: Center(
                      child: Text("Connexion",
                          style: GoogleFonts.kalam(
                              fontSize: 18, color: Colors.white))),
                ),
              ),
            )
          ],
        ),
      ]),
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
                      image: AssetImage("assets/images/ecole.jpg"), fit: BoxFit.cover),
                  //child: Image.asset()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 39.0, top: 27),
              child: Container(
                  width: 450,
                  height: 450,
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Text(
                    " Crée en 1970 par une communauté Catholique,Nôtre Dame de Paix est l’un des meilleurs établissement qui prône de nos jours des valeurs chrétienne et morale basés sur les saintes écritures.  ",
                    style: GoogleFonts.lobsterTwo(fontSize: 45),
                  )),
            ),
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
        padding: const EdgeInsets.only(left: 50.0, right: 50),
        child: Container(
          //width: 1200,
          //height: 1700,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(219, 217, 217, 0.5)),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: LigneA(
                  a: "assets/images/klc.jpg",
                  b: "Les salles de classe propre,\nsaines et confortable ,\ntoutes ses qualités pour assurer\n la suivie des aprennants"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: LigneB(
                  a: "assets/images/klc.jpg",
                  b: "Une quantine fonctionnelle ,suivie par des nutritionnistes articuliers ,afin de servir aux apprenant des vitamines neccessaire à leur santé."),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: LigneA(
                  a: "assets/images/kntine.jpg",
                  b: "Un réfectoire  harmonisé de sorte à regrouper toute la jeunesse autour du repas de leur choix,mais qui est régit par des règles dont l’apprenant devrai s’impregner"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: LigneB(
                  a: "assets/images/ps.jpg",
                  b: "Une grande piscine de 500 mètres où se déroules toutes compétitions liés à la natation et les cours de natation académique.Chaque années nous organisons une compétion régionale au sein de l’établissement"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 20),
              child: LigneA(
                  a: "assets/images/terrain.jpg",
                  b: "Un terrain de sport de 500 mètres où se déroules certaines activités sportives que sont les compétitions inter classe et extra école de football et les cours de sport académique."),
            ),
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