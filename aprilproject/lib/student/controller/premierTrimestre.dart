import 'package:flutter/material.dart';

import '../model/maListeViwMoy.dart';

class premierTrim extends StatelessWidget {
  const premierTrim({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(color: Colors.amber),
        child: const MaListViewMoyenne());
  }
}
