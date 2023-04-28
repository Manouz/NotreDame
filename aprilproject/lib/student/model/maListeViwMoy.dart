import 'package:flutter/material.dart';

class MaListViewMoyenne extends StatelessWidget {
  const MaListViewMoyenne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      DataTable(columns: const [
        DataColumn(
            label: Text(
          "Disciplines",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        )),
        DataColumn(
            label: Text(
          "Notes",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        )),
        DataColumn(
            label: Text(
          "Moyennes",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        )),
        DataColumn(
            label: Text(
          "Rang",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ))
      ], rows: const [
        DataRow(cells: [
          DataCell(Text(
            "Fancais",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("10, 12, 15")),
          DataCell(Text(" ${47 / 3}")),
          DataCell(Text("5"))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Histoire-Géo",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("02, 12, 8")),
          DataCell(Text("${(02 + 12 + 8) / 3}")),
          DataCell(Text("10"))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Anglais",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("12, 12, 18")),
          DataCell(Text("${(12 + 12 + 18) / 3}")),
          DataCell(Text("10"))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Maths",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("12, 12, 18")),
          DataCell(Text("${(12 + 12 + 18) / 3}")),
          DataCell(Text("10"))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "SVT",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("17, 12, 18")),
          DataCell(Text("${(17 + 12 + 18) / 3}")),
          DataCell(Text("3"))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Physique-Ch",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("1, 12, 18")),
          DataCell(Text("${(1 + 12 + 18) / 3}")),
          DataCell(Text("6"))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Philosophie",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("12, 12, 18")),
          DataCell(Text("${(12 + 12 + 18) / 3}")),
          DataCell(Text("10"))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "EPS",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("12, 2, 1")),
          DataCell(Text("${(12 + 2 + 1) / 3}")),
          DataCell(Text("25"))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Conduite",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("12, 12, 18")),
          DataCell(Text("${(12 + 12 + 18) / 3}")),
          DataCell(Text("10"))
        ])
      ]),
    ]);
  }
}
