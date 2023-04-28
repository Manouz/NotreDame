import 'package:flutter/material.dart';

import '../model/maListeViwMoy.dart';

class DeuxiemeTrim extends StatelessWidget {
  const DeuxiemeTrim({
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
