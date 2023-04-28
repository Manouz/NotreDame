import 'package:flutter/material.dart';

import '../controller/controllerEmploiDuTemps.dart';

class EmploiDuTelpsStudents extends StatefulWidget {
  const EmploiDuTelpsStudents({super.key});

  @override
  State<EmploiDuTelpsStudents> createState() => _EmploiDuTelpsStudentsState();
}

class _EmploiDuTelpsStudentsState extends State<EmploiDuTelpsStudents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      height: MediaQuery.of(context).size.height / 1.2,
      color: Colors.amber,
      child: Calendar(),
    );
  }
}
