import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:intl/intl.dart';
import 'MainBox.dart';

class AttribMoy extends StatefulWidget {
  const AttribMoy({super.key});

  @override
  State<AttribMoy> createState() => _AttribMoy();
}

class _AttribMoy extends State<AttribMoy> with TickerProviderStateMixin {
  late List<EleveMoyenne> _elevesMoy; // For the eleve's class
  late EleveMoyDataSource _eleveMoyDataSource; //For DataGrid DataSource
  TabController? tabController2;
  int index = 0; //In order to use it further for dynamic displaying

  void _tabListener() {
    setState(() {
      index = tabController2!.index;
    });
  }

  @override
  void initState() {
    _elevesMoy = EleveMoyenne.getELeveData(); //Giving the
    _eleveMoyDataSource = EleveMoyDataSource(
        _elevesMoy); //Binding dataSource with my data in the list of Map
    tabController2 = TabController(length: 4, vsync: this);
    tabController2!.addListener(_tabListener);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController2!.removeListener(_tabListener);
    tabController2!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TabarNavigation(tabController: tabController2),
        NoteEditing(
          indexTab: index,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: TabBarView(controller: tabController2, children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: ListMoy(eleveMoyDataSource: _eleveMoyDataSource),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: ListMoy(eleveMoyDataSource: _eleveMoyDataSource),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: ListMoy(eleveMoyDataSource: _eleveMoyDataSource),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: ListMoy(eleveMoyDataSource: _eleveMoyDataSource),
            ),
          ]),
        ),
      ],
    );
  }
}

class NoteEditing extends StatelessWidget {
  int indexTab;
  NoteEditing({super.key, required this.indexTab});
  List<String> trimestre = [
    "Trimestre 1",
    "Trimestre 2",
    "Trimestre 3",
    "Général"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        CalculNoteBox(
          content: "Note 1",
        ),
        CalculNoteBox(
          content: "Note 2",
        ),
        CalculNoteBox(
          content: "Note 3",
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: TextButton(
            child: Text(
              "Calculer",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
      ]),
    );
  }
}

class CalculNoteBox extends StatelessWidget {
  String content;
  CalculNoteBox({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "$content",
              style: TextStyle(color: Colors.black),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey)),
          ),
          onPressed: () {},
        ),
        TextButton(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                //color: Colors.red,
                border: Border.all(color: Colors.orange)),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class TabarNavigation extends StatelessWidget {
  //TabBarNavigation of the Notes Attributions
  const TabarNavigation({
    super.key,
    required this.tabController,
  });

  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        controller: tabController,
        isScrollable: true,
        labelPadding: EdgeInsets.all(14.0),
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.black,
        automaticIndicatorColorAdjustment: true,
        labelColor: Colors.black,
        // indicator: BoxDecoration(
        //   color: Colors.black,
        //   borderRadius: BorderRadius.circular(15),
        // ),
        tabs: [
          Text("Trimestre 1"),
          Text("Trimestre 2"),
          Text("Trimestre 3"),
          Text("Général"),
        ]);
  }
}

class ListMoy extends StatelessWidget {
  const ListMoy({
    super.key,
    required EleveMoyDataSource eleveMoyDataSource,
  }) : _eleveMoyDataSource = eleveMoyDataSource;

  final EleveMoyDataSource _eleveMoyDataSource;

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
        source: _eleveMoyDataSource,
        allowSorting: true,
        allowEditing: true,
        columns: [
          GridColumn(
              columnName: 'matricule',
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Matricule',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
              columnName: 'nom',
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Nom',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
              columnName: 'prenom',
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Prénom',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
              columnName: 'date_Naissance',
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Date de naissance',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
              columnName: 'moyenne',
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Moyenne',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
              columnName: 'rang',
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Rang',
                  overflow: TextOverflow.ellipsis,
                ),
              ))
        ]);
  }
}

class EleveMoyDataSource extends DataGridSource {
  EleveMoyDataSource(List<EleveMoyenne> eleveMoy) {
    dataGridRows = eleveMoy
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              DataGridCell(
                  columnName: 'matricule', value: dataGridRow.Matricule),
              DataGridCell(columnName: 'name', value: dataGridRow.Nom),
              DataGridCell(columnName: 'prenom', value: dataGridRow.Prenom),
              DataGridCell(
                  columnName: 'date_Naissance',
                  value: dataGridRow.Date_Naissance),
              DataGridCell(columnName: 'moyenne', value: dataGridRow.Moyenne),
              DataGridCell(columnName: 'Rang', value: dataGridRow.Rang)
            ]))
        .toList();
  }
  late List<DataGridRow> dataGridRows;
  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: (dataGridCell.columnName == 'matricule' ||
                dataGridCell.columnName == 'rang')
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: Text(dataGridCell.value.toString()),
      );
    }).toList());
  }
}

class EleveMoyenne {
  String Matricule;
  String Nom;
  String Prenom;
  String Date_Naissance;
  double Moyenne;
  int Rang;
  EleveMoyenne(
      {required this.Matricule,
      required this.Nom,
      required this.Prenom,
      required this.Date_Naissance,
      required this.Moyenne,
      required this.Rang});

  static List<Map<String, dynamic>> elevesTrim1 = [
    {
      'matricule': 'CI001',
      'nom': 'Diop',
      'prenom': 'Fatoumata',
      'date_naissance': DateTime(2005, 2, 10),
      'Moyenne': 14.0,
      'Rang': 1,
    },
    {
      'matricule': 'CI002',
      'nom': 'Ndiaye',
      'prenom': 'Baba',
      'date_naissance': DateTime(2004, 11, 1),
      'Moyenne': 14.0,
      'Rang': 1,
    },
    {
      'matricule': 'CI003',
      'nom': 'Konaté',
      'prenom': 'Aminata',
      'date_naissance': DateTime(2006, 5, 22),
      'note1': 15.0,
      'note2': 13.0,
      'Moyenne': 14.0,
      'Rang': 1,
    },
    {
      'matricule': 'CI004',
      'nom': 'Sow',
      'prenom': 'Mamadou',
      'date_naissance': DateTime(2005, 7, 5),
      'Moyenne': 14.0,
      'Rang': 1,
    },
    {
      'matricule': 'CI005',
      'nom': 'Diallo',
      'prenom': 'Aicha',
      'date_naissance': DateTime(2005, 1, 1),
      'Moyenne': 14.0,
      'Rang': 1,
    },
    {
      'matricule': 'CI006',
      'nom': 'Traoré',
      'prenom': 'Mamadou',
      'date_naissance': DateTime(2006, 9, 18),
      'Moyenne': 14.0,
      'Rang': 1,
    },
    {
      'matricule': 'CI007',
      'nom': 'Kone',
      'prenom': 'Aminata',
      'date_naissance': DateTime(2005, 3, 9),
      'Moyenne': 14.0,
      'Rang': 1,
    },
    {
      'matricule': 'CI008',
      'nom': 'Toure',
      'prenom': 'Kwame',
      'date_naissance': DateTime(2004, 6, 30),
      'Moyenne': 14.0,
      'Rang': 1,
    },
    {
      'matricule': 'CI009',
      'nom': 'Mensah',
      'prenom': 'Sanaa',
      'date_naissance': DateTime(2005, 4, 5),
      'Moyenne': 14.0,
      'Rang': 1,
    },
    {
      'matricule': 'CI010',
      'nom': 'Sissoko',
      'prenom': 'Amadou',
      'date_naissance': DateTime(2004, 11, 14),
      'Moyenne': 14.0,
      'Rang': 1,
    }
  ];

  static List<EleveMoyenne> getELeveData() {
    return elevesTrim1
        .map((element) => EleveMoyenne(
            Matricule: element['matricule'],
            Nom: element['nom'],
            Prenom: element['prenom'],
            Date_Naissance:
                DateFormat("yyyy-MM-dd").format(element['date_naissance']),
            Moyenne: element['Moyenne'],
            Rang: element['Rang']))
        .toList();
  }
}
