import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

//import 'package:animated_text_kit/animated_text_kit.dart';

var styl = GoogleFonts.lobsterTwo(fontSize: 20);
var Styl = GoogleFonts.lobsterTwo(fontSize: 40);
var Styll = GoogleFonts.lobsterTwo(fontSize: 28);
var Stylle = GoogleFonts.lobsterTwo(fontSize: 24);

class Grid extends StatelessWidget {
  Grid({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 3,
      child: SizedBox(
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          childAspectRatio: 5 / 4,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
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
            Container(
              padding: EdgeInsets.all(10),
              //width: 500,
              //height: 100,
              decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(25)),
              child: Constnt(
                icone: Icon(Icons.supervised_user_circle_rounded),
                a: "Enseignants Qualifiés",
                b: "Nôtre qualité d’enseignement provient du choix judicieux des enseignants qui eux sont formés dans les plus grandes universités internationales... ",
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.teal[300],
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.all(10),
              child: Constnt(
                icone: Icon(Icons.abc),
                a: "Test d’entrée",
                b: 'La sélection par le test nous assure du bagage intellectuel que possède tous nos collégiens afin de leur assurer un meilleur suivie académique...',
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.teal[400],
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.all(10),
              child: Constnt(
                icone: Icon(Icons.health_and_safety),
                a: "Curriculium-Vitae",
                b: 'Le suivie de la santé de nos collégiens sont partie du fondements de notre établissement.C’est en celà l’un de nos secrets de réussite...',
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.teal[500],
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.all(10),
              child: Constnt(
                icone: Icon(Icons.circle_notifications),
                a: "Certifications",
                b: 'Pendant l’année académique chaque collégiens a droit a une formations cerrtifiante jusqu’au baccalauréat ,ce qui compte environ 7 certifications ...',
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.teal[600],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Constnt(
                icone: Icon(Icons.abc),
                a: "Meilleur Investissement",
                b: 'Notre établissement considère la curcuse de vôtre enfant comme un investissement correct qui aura un retour sur investissement certain ...',
              ),
            ),
          ],
        ),
      ),
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
      width: 200,
      height: 150,
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
        color: Colors.brown,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: 230,
                height: 320,
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                ),
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
  final Widget img;
  String a;
  double p;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: p),
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/terrain.jpg"),
            radius: 130,
          ),
          SizedBox(width: 5),
          Container(
              width: 400,
              height: 340,
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Text(a, style: Styl))
        ],
      ),
    );
  }
}

class Conteneur extends StatelessWidget {
  const Conteneur({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromRGBO(166, 31, 56, 0.58)),
      child: Container(
        width: double.infinity,
        height: 150,
        child: Column(
          children: [
            Text("Nous Contacter",
                style:
                    GoogleFonts.lobsterTwo(fontSize: 34, color: Colors.white)),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 178.0),
                  child: Text("Nos liens",
                      style: GoogleFonts.lobsterTwo(
                          fontSize: 30, color: Colors.white)),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 1150.0),
                  child: Text(
                    "Inscription",
                    style: GoogleFonts.lobsterTwo(
                        fontSize: 20, color: Colors.amber),
                  ),
                ),
                //Text("",style: GoogleFonts.lobsterTwo(fontSize:20),),
                //Text("",style: GoogleFonts.lobsterTwo(fontSize:20),),
              ],
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}

class Columnn extends StatelessWidget {
  Columnn({super.key, required this.a, required this.b});
  String a, b;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          a,
          style: GoogleFonts.lobsterTwo(fontSize: 40, color: Colors.white),
        ),
        Text(
          b,
          style: GoogleFonts.lobsterTwo(fontSize: 30, color: Colors.white),
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
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            a,
            width: 450,
          ),
        ),
        //SizedBox(width: 20),
        ClipRRect(
          child: Container(
            //color: Colors.amber,
            width: 560,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                b,
                style: GoogleFonts.lobsterTwo(fontSize: 40),
              ),
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
      children: [
        ClipRRect(
          child: Container(
            //color: Colors.amber,
            width: 560,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                b,
                style: GoogleFonts.lobsterTwo(fontSize: 40),
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            a,
            width: 450,
          ),
        ),
      ],
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
