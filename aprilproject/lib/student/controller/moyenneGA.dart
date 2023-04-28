import 'package:flutter/material.dart';

import '../model/classMGA.dart';
import 'mesFonctionEtConstantes.dart';

class MoyenneGeneraleAnnuelle extends StatelessWidget {
  MoyenneGeneraleAnnuelle({
    super.key,
  });

  List<MoyenneGenerale> MaNoteMoyenness = [
    MoyenneGenerale(
      leCoeficient: "Coef 1",
      laMoyenneDuTRim: const Text(
        "MOY TRIM1: ...",
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    MoyenneGenerale(
      leCoeficient: "Coef 2",
      laMoyenneDuTRim: const Text(
        "MOY TRIM2: ...",
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    MoyenneGenerale(
      leCoeficient: "Coef 2",
      laMoyenneDuTRim: const Text(
        "MOY TRIM3: ...",
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: ListView.separated(
            itemBuilder: (context, int index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  monContainerMoyenne(
                    leTextIn: (MaNoteMoyenness[index].laMoyenneDuTRim),
                    height: 50,
                    width: 200,
                    color: Colors.transparent,
                    color1: Colors.black,
                  ),
                  const SizedBox(
                    width: 100.0,
                  ),
                  monContainerMoyenne(
                    leTextIn: Text(
                      MaNoteMoyenness[index].leCoeficient,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    height: 50,
                    width: 70,
                    color: Colors.red,
                    color1: Colors.transparent,
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 20,
              );
            },
            itemCount: 3),
      ),
    );
  }
}
