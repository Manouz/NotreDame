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
          DataCell(Text("...")),
          DataCell(Text("...")),
          DataCell(Text("..."))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Histoire-Géo",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("...")),
          DataCell(Text("...")),
          DataCell(Text("..."))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Anglais",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("...")),
          DataCell(Text("...")),
          DataCell(Text("..."))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Maths",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("...")),
          DataCell(Text("...")),
          DataCell(Text("..."))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "SVT",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("...")),
          DataCell(Text("...")),
          DataCell(Text("..."))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Physique-Ch",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("...")),
          DataCell(Text("...")),
          DataCell(Text("..."))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Philosophie",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("...")),
          DataCell(Text("...")),
          DataCell(Text("..."))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "EPS",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("...")),
          DataCell(Text("...")),
          DataCell(Text("..."))
        ]),
        DataRow(cells: [
          DataCell(Text(
            "Conduite",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          DataCell(Text("...")),
          DataCell(Text("...")),
          DataCell(Text("..."))
        ])
      ]),
    ]);
  }
}
