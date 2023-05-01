import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:aprilproject/ColorsPanel.dart';
import 'package:aprilproject/ResponsiveMethod/responsive.dart';

//import 'package:animated_text_kit/animated_text_kit.dart';

var styl = GoogleFonts.lobsterTwo(fontSize: 20);
var Styl = GoogleFonts.lobsterTwo(fontSize: 40);
var Styll = GoogleFonts.lobsterTwo(fontSize: 28);
var Stylle = GoogleFonts.lobsterTwo(fontSize: 24);

class Grid extends StatelessWidget {
  Grid({super.key});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 32,
      spacing: 20,
      children: [
        Container(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Text('Pourquoi ',
                      style: GoogleFonts.lobsterTwo(fontSize: 56)),
                  Text('sommes-nous ',
                      style: GoogleFonts.lobsterTwo(fontSize: 56)),
                  Text(
                    'les meilleurs  ',
                    style: GoogleFonts.lobsterTwo(fontSize: 56),
                  ),
                  Text(
                    'de tous ?',
                    style: GoogleFonts.lobsterTwo(fontSize: 56),
                  ),
                ],
              )),
        ),
        // Container(
        //   padding: EdgeInsets.all(10),
        //   //width: 500,
        //   //height: 100,
        //   decoration: BoxDecoration(
        //       color: Colors.teal[200],
        //       borderRadius: BorderRadius.circular(25)),
        //   child: Constnt(
        //     icone: Icon(Icons.supervised_user_circle_rounded),
        //     a: "Enseignants Qualifiés",
        //     b: "Nôtre qualité d’enseignement provient du choix judicieux des enseignants qui eux sont formés dans les plus grandes universités internationales... ",
        //   ),
        // ),
        CertificationBox(
          title: "Test d’entrée",
          content:
              'La sélection par le test nous assure du bagage intellectuel que possède tous nos collégiens afin de leur assurer un meilleur suivie académique...',
          icons: Icons.event,
        ),
        CertificationBox(
          title: "Curriculium-Vitae",
          content:
              'Pendant l’année académique chaque collégiens a droit a une formations cerrtifiante jusqu’au baccalauréat ,ce qui compte environ 7 certifications ...',
          icons: Icons.monitor_heart,
        ),
        CertificationBox(
          title: "Certifications",
          content:
              'Pendant l’année académique chaque collégiens a droit a une formations cerrtifiante jusqu’au baccalauréat ,ce qui compte environ 7 certifications ...',
          icons: Icons.school,
        ),
        CertificationBox(
          title: "Meilleur Investissement",
          content:
              'Notre établissement considère la curcuse de vôtre enfant comme un investissement correct qui aura un retour sur investissement certain ...',
          icons: Icons.verified_user,
        ),
        // Container(
        //   width: 100,
        //   height: 100,
        //   decoration: BoxDecoration(
        //     color: Colors.teal[300],
        //     borderRadius: BorderRadius.circular(25),
        //   ),
        //   padding: const EdgeInsets.all(10),
        //   child: Constnt(
        //     icone: Icon(Icons.abc),
        //     a: "Test d’entrée",
        //     b: 'La sélection par le test nous assure du bagage intellectuel que possède tous nos collégiens afin de leur assurer un meilleur suivie académique...',
        //   ),
        // ),
        // Container(
        //   width: 100,
        //   height: 100,
        //   decoration: BoxDecoration(
        //     color: Colors.teal[400],
        //     borderRadius: BorderRadius.circular(25),
        //   ),
        //   padding: const EdgeInsets.all(10),
        //   child: Constnt(
        //     icone: Icon(Icons.health_and_safety),
        //     a: "Curriculium-Vitae",
        //     b: 'Le suivie de la santé de nos collégiens sont partie du fondements de notre établissement.C’est en celà l’un de nos secrets de réussite...',
        //   ),
        // ),
        // Container(
        //   width: 100,
        //   height: 100,
        //   decoration: BoxDecoration(
        //     color: Colors.teal[500],
        //     borderRadius: BorderRadius.circular(25),
        //   ),
        //   padding: const EdgeInsets.all(10),
        //   child: Constnt(
        //     icone: Icon(Icons.circle_notifications),
        //     a: "Certifications",
        //     b: 'Pendant l’année académique chaque collégiens a droit a une formations cerrtifiante jusqu’au baccalauréat ,ce qui compte environ 7 certifications ...',
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.all(10),
        //   width: 100,
        //   height: 100,
        //   decoration: BoxDecoration(
        //     color: Colors.teal[600],
        //     borderRadius: BorderRadius.circular(25),
        //   ),
        //   child: Constnt(
        //     icone: Icon(Icons.abc),
        //     a: "Meilleur Investissement",
        //     b: 'Notre établissement considère la curcuse de vôtre enfant comme un investissement correct qui aura un retour sur investissement certain ...',
        //   ),
        // ),
      ],
    );
  }
}

class Constnt extends StatelessWidget {
  Constnt({
    super.key,
    required this.icone,
    required this.a,
    required this.b,
  });
  String a, b;
  final Widget icone;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.brown,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 250),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: icone,
            ),
          ),
          SizedBox(height: 2),
          Row(
            children: [
              Text(
                a,
                style: Styll,
              ),
            ],
          ),
          SizedBox(height: 13),
          Text(
            b,
            style: Stylle,
          ),
        ],
      ),
    );
  }
}

class Constnte extends StatelessWidget {
  Constnte({
    super.key,
    required this.img,
    required this.a,
    required this.b,
    required this.c,
  });
  String a, b, c;
  final Widget img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 320,
      decoration: BoxDecoration(
        color: colorBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: 230,
                height: 320,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(top: BorderSide(), bottom: BorderSide())),
                child: Column(
                  children: [
                    Text(
                      c,
                      style: styl,
                    ),
                    Container(
                        //decoration: BoxDecoration(image: DecorationImage(image: AssetImage(img))),
                        child: img),
                    Text(
                      a,
                      style: styl,
                    ),
                    Text(
                      b,
                      style: styl,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Constante extends StatelessWidget {
  Constante({super.key, required this.img, required this.a, required this.p});
  final String img;
  String a;
  double p;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: CircleAvatar(
              backgroundImage: AssetImage(img),
              radius: 90,
            ),
          ),
          SizedBox(width: 5),
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Container(
                width: 200,
                child: Text(a, style: GoogleFonts.lobsterTwo(fontSize: 19))),
          )
        ],
      ),
    );
  }
}

class Conteneur extends StatelessWidget {
  const Conteneur({super.key});
  @override
  Widget build(BuildContext context) {
    if (!Responsive.isMobile(context)) {
      return Container(
        decoration: BoxDecoration(color: colorBlue),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/notredame.png")))),
                        Container(
                          child: Text(
                            "NOTRE\nDAME DE PAIX",
                            style: GoogleFonts.karma(
                                fontSize: 19, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Icon(Icons.add_call),
                  //     Icon(Icons.add_call),
                  //     Icon(Icons.add_call),
                  //     Icon(Icons.add_call),
                  //   ],
                  // )
                ],
              ),
              Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nos liens",
                          style: GoogleFonts.lobsterTwo(
                              fontSize: 20, color: Colors.white)),
                      Text(
                        "Inscription",
                        style: GoogleFonts.lobsterTwo(
                            fontSize: 20, color: Colors.amber),
                      ),
                      Text(
                        "Inscription",
                        style: GoogleFonts.lobsterTwo(
                            fontSize: 20, color: Colors.amber),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Site internet de l’école : notredamedepaix@educ.ci",
                          style: GoogleFonts.lobsterTwo(
                              fontSize: 20, color: Colors.white)),
                      Text(
                        "Addresse : 01 BP Abidjan 01",
                        style: GoogleFonts.lobsterTwo(
                            fontSize: 20, color: Colors.amber),
                      ),
                      Text(
                        "Sécrétariat : Inscription +225 0 234 234 / +225 0 800 800",
                        style: GoogleFonts.lobsterTwo(
                            fontSize: 20, color: Colors.amber),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(color: colorBlue),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                            height: 20, //--
                            width: 20, //--
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/notredame.png")))),
                        Container(
                          child: Text(
                            "NOTRE\nDAME DE PAIX",
                            style: GoogleFonts.karma(
                                fontSize: 15, color: Colors.white), //--
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Icon(Icons.add_call),
                  //     Icon(Icons.add_call),
                  //     Icon(Icons.add_call),
                  //     Icon(Icons.add_call),
                  //   ],
                  // )
                ],
              ),
              Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nos liens",
                          style: GoogleFonts.lobsterTwo(
                              fontSize: 15, color: Colors.white)), //--
                      Text(
                        "Inscription",
                        style: GoogleFonts.lobsterTwo(
                            fontSize: 15, color: Colors.amber), //--
                      ),
                      Text(
                        "Inscription",
                        style: GoogleFonts.lobsterTwo(
                            fontSize: 15, color: Colors.amber), //--
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Site internet de l’école : notredamedepaix@educ.ci",
                          style: GoogleFonts.lobsterTwo(
                              fontSize: 15, color: Colors.white)), //--
                      Text(
                        "Addresse : 01 BP Abidjan 01",
                        style: GoogleFonts.lobsterTwo(
                            fontSize: 15, color: Colors.amber), //--
                      ),
                      Text(
                        "Sécrétariat : Inscription +225 0 234 234 / +225 0 800 800",
                        style: GoogleFonts.lobsterTwo(
                            fontSize: 15, color: Colors.amber), //--
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}

class Columnn extends StatelessWidget {
  Columnn({super.key, required this.a, required this.b, required this.c});
  String a, b, c;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: a,
            style: const TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: b,
                  style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Text(
          c,
          style: TextStyle(fontSize: 20, color: Colors.white),
        )
      ],
    );
  }
}

class LigneA extends StatelessWidget {
  LigneA({
    super.key,
    required this.a,
    required this.b,
  });
  final String a, b;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            width: 400,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(image: AssetImage(a), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        //SizedBox(width: 20),
        Flexible(
          flex: 1,
          child: Container(
            width: 400,
            padding: EdgeInsets.all(8.0),
            //color: Colors.amber,
            child: Text(
              b,
              style: GoogleFonts.lobsterTwo(fontSize: 21),
            ),
          ),
        )
      ],
    );
  }
}

class LigneB extends StatelessWidget {
  LigneB({
    super.key,
    required this.a,
    required this.b,
  });
  final String a, b;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            width: 400,
            padding: EdgeInsets.all(8.0),
            //color: Colors.amber,
            child: Text(
              b,
              style: GoogleFonts.lobsterTwo(fontSize: 21),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            width: 400,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(a), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
        )
        //SizedBox(width: 20),
      ],
    );
  }
}

class CertificationBox extends StatelessWidget {
  String title;
  String content;
  IconData icons;
  CertificationBox(
      {super.key,
      required this.title,
      required this.content,
      required this.icons});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10),
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 233, 233, 233),
            borderRadius: BorderRadius.circular(20)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(70)),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 242, 227, 217),
              child: Icon(
                icons,
                size: 50,
                color: colorsRed,
              ),
              radius: 40,
            ),
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            content,
            style: GoogleFonts.lobsterTwo(fontSize: 24),
          )
        ]),
      ),
      onHover: (value) {},
      onTap: () {},
    );
  }
}






// class Anime extends StatelessWidget {
//   const Anime({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 1),
//       child: AnimatedTextKit(
//         animatedTexts: [
//           TyperAnimatedText('interessant',
//               textStyle:
//                   const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//         ],
//         repeatForever: true,
//         onTap: () {
//           print("I am executing");
//         },
//       ),
//     );
//   }
// }

// Widget a() {
//   return DefaultTextStyle(
//     style: GoogleFonts.lobsterTwo(fontSize: 30),
//     child: AnimatedTextKit(
//       animatedTexts: [
//         TyperAnimatedText('i'),
//         TyperAnimatedText('n'),
//         TyperAnimatedText('t'),
//       ],
//       repeatForever: true,
//     ),
//   );
// }

// class aa extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         AnimatedTextKit(
//           animatedTexts: [
//             TyperAnimatedText('This is Animated text,',
//                 textStyle: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 30,
//                     backgroundColor: Colors.purple)),
//             TyperAnimatedText('You are viewing it here.',
//                 textStyle:
//                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//           ],
//           repeatForever: true,
//         ),
//       ],
//     );
//   }
// }
