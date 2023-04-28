import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'ConnectedProfil.dart';

class CarouselHeading extends StatefulWidget {
  const CarouselHeading({super.key});

  @override
  State<CarouselHeading> createState() => _CarouselHeadingState();
}

class _CarouselHeadingState extends State<CarouselHeading> {
  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    return CarouselSlider.builder(
      itemCount: informationsEducation.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
        child: InformationPatern(
          image: informationsEducation[itemIndex]['image']!,
          information: informationsEducation[itemIndex]['information']!,
          title: informationsEducation[itemIndex]['titre']!,
        ),
      ),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        initialPage: 2,
      ),
    );
  }
}

class InformationPatern extends StatefulWidget {
  String image;
  String title;
  String information;
  InformationPatern(
      {super.key,
      required this.image,
      required this.information,
      required this.title});

  @override
  State<InformationPatern> createState() => _InformationPaternState();
}

class _InformationPaternState extends State<InformationPatern> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          flex: isVisible ? 3 : 1,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(widget.image))),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    child: Text(
                      "En savoir plus",
                      style: TextStyle(fontSize: 9),
                    ),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.blue,
                        elevation: 1,
                        backgroundColor: Colors.white),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    widget.image,
                    style: TextStyle(fontSize: 9),
                  )),
            ],
          ),
        ),
        Flexible(
          flex: isVisible ? 1 : 0,
          child: Visibility(
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: SingleChildScrollView(
                  child: Text(
                widget.information,
                style: TextStyle(color: Colors.black, fontSize: 14),
              )),
            ),
            visible: isVisible,
          ),
        )
      ],
    );
  }
}

class InformationHeaging extends StatelessWidget {
  const InformationHeaging({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: SingleChildScrollView(
          child: Column(
        children: [
          informations(false),
          informations(false),
          informations(false),
          informations(true),
          informations(true),
          informations(true),
        ],
      )),
    );
  }

  ListTile informations(bool read) {
    return ListTile(
      leading: Icon(
        Icons.info,
        color: read
            ? Color.fromARGB(255, 66, 154, 69)
            : Color.fromARGB(255, 234, 164, 59),
      ),
      title: Text(
        'Réforme du programme scolaire',
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
      ),
      subtitle: Text(
        "Les enseignants sont invités à prendre connaissance des nouvelles directives sur l'évaluation des élèves.",
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Text(
          "Bienvenu, Mme 'Abebie'",
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Restez connecté, à la vie de l'école",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Raleway',
            ),
          ),
        ),
        FittedBox(
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "Learn More",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

List<Map<String, String>> informationsEducation = [
  {
    'titre': "Réforme du programme scolaire",
    'information':
        "Le ministère de l'Éducation annonce une réforme majeure du programme scolaire pour l'année prochaine. Des ajustements seront apportés dans plusieurs matières afin de mieux répondre aux besoins des élèves.",
    'image': 'assets/images/picc1.png'
  },
  {
    'titre': "Nouvelles directives sur l'évaluation",
    'information':
        "Les enseignants sont invités à prendre connaissance des nouvelles directives sur l'évaluation des élèves. Des changements importants ont été apportés aux méthodes et critères d'évaluation dans le but d'assurer une évaluation plus équitable et objective.",
    'image': 'assets/images/picc2.jpg'
  },
  {
    'titre': "Ressources pédagogiques en ligne",
    'information':
        "Une nouvelle plateforme en ligne est maintenant disponible pour les enseignants. Elle offre un large éventail de ressources pédagogiques, telles que des vidéos, des exercices interactifs et des documents de référence, pour soutenir l'enseignement en classe.",
    'image': 'assets/images/picc2.png'
  },
  {
    'titre': "Programme d'échange international",
    'information':
        "Le lycée L.M.I.T lance un programme d'échange international avec une école partenaire en Europe. Les élèves auront la possibilité de participer à des échanges culturels et linguistiques, favorisant ainsi une ouverture sur le monde.",
    'image': 'assets/images/picc5.jpg'
  },
];
