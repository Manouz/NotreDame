import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:intl/intl.dart';
import 'MainBox.dart';

class GlobalNote extends StatefulWidget {
  const GlobalNote({super.key});

  @override
  State<GlobalNote> createState() => _GlobalNoteState();
}

class _GlobalNoteState extends State<GlobalNote> with TickerProviderStateMixin {
  late List<Eleve> _eleves; // For the eleve's class
  late EleveDataSource _eleveDataSource; //For DataGrid DataSource
  TabController? tabController1;
  int index = 0; //In order to use it further for dynamic displaying

  void _tabListener() {
    setState(() {
      index = tabController1!.index;
    });
  }

  @override
  void initState() {
    _eleves = Eleve.getELeveData(); //Giving the
    _eleveDataSource = EleveDataSource(
        _eleves); //Binding dataSource with my data in the list of Map
    tabController1 = TabController(length: 3, vsync: this);
    tabController1!.addListener(_tabListener);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController1!.removeListener(_tabListener);
    tabController1!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TabarNavigation(tabController: tabController1),
        NoteEditing(),
        Flexible(
          fit: FlexFit.loose,
          child: TabBarView(controller: tabController1, children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: ListNotes(eleveDataSource: _eleveDataSource),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: ListNotes(eleveDataSource: _eleveDataSource),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: ListNotes(eleveDataSource: _eleveDataSource),
            ),
          ]),
        ),
      ],
    );
  }
}

class NoteEditing extends StatelessWidget {
  const NoteEditing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        TextButton(
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Text("Ajouter une note"),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey)),
          ),
          onPressed: () {},
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              child: Container(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Retirer une note",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey)),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Container(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Note ?",
                  style: TextStyle(color: Colors.black),
                ),
                decoration: BoxDecoration(
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey)),
              ),
              onPressed: () {},
            ),
          ],
        )
      ]),
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
        ]);
  }
}

class ListNotes extends StatelessWidget {
  const ListNotes({
    super.key,
    required EleveDataSource eleveDataSource,
  }) : _eleveDataSource = eleveDataSource;

  final EleveDataSource _eleveDataSource;

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
        source: _eleveDataSource,
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Prénom',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
              columnName: 'date_Naissance',
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Date de naissance',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
              columnName: 'note1',
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Note 1',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
              columnName: 'Note2',
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Note 2',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
              columnName: 'Note3',
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Note 3',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
              columnName: 'note4',
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Note 4',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
        ]);
  }
}

class EleveDataSource extends DataGridSource {
  EleveDataSource(List<Eleve> eleve) {
    dataGridRows = eleve
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              DataGridCell(
                  columnName: 'matricule', value: dataGridRow.Matricule),
              DataGridCell(columnName: 'name', value: dataGridRow.Nom),
              DataGridCell(columnName: 'prenom', value: dataGridRow.Prenom),
              DataGridCell(
                  columnName: 'date_Naissance',
                  value: dataGridRow.Date_Naissance),
              DataGridCell(columnName: 'note1', value: dataGridRow.Note1),
              DataGridCell(columnName: 'note2', value: dataGridRow.Note2),
              DataGridCell(columnName: 'note3', value: dataGridRow.Note3),
              DataGridCell(columnName: 'note4', value: dataGridRow.Note4)
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
                dataGridCell.columnName == 'note4')
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: Text(dataGridCell.value.toString()),
      );
    }).toList());
  }
}

class Eleve {
  String Matricule;
  String Nom;
  String Prenom;
  String Date_Naissance;
  double Note1;
  double Note2;
  double Note3;
  double Note4;
  Eleve(
      {required this.Matricule,
      required this.Nom,
      required this.Prenom,
      required this.Date_Naissance,
      required this.Note1,
      required this.Note2,
      required this.Note3,
      required this.Note4});

  static List<Map<String, dynamic>> elevesTrim1 = [
    {
      'matricule': 'CI001',
      'nom': 'Diop',
      'prenom': 'Fatoumata',
      'date_naissance': DateTime(2005, 2, 10),
      'note1': 14.0,
      'note2': 15.0,
      'note3': 13.0,
      'note4': 17.0
    },
    {
      'matricule': 'CI002',
      'nom': 'Ndiaye',
      'prenom': 'Baba',
      'date_naissance': DateTime(2004, 11, 1),
      'note1': 12.0,
      'note2': 16.0,
      'note3': 18.0,
      'note4': 15.0
    },
    {
      'matricule': 'CI003',
      'nom': 'Konaté',
      'prenom': 'Aminata',
      'date_naissance': DateTime(2006, 5, 22),
      'note1': 15.0,
      'note2': 13.0,
      'note3': 12.0,
      'note4': 14.0
    },
    {
      'matricule': 'CI004',
      'nom': 'Sow',
      'prenom': 'Mamadou',
      'date_naissance': DateTime(2005, 7, 5),
      'note1': 11.0,
      'note2': 10.0,
      'note3': 9.0,
      'note4': 12.0
    },
    {
      'matricule': 'CI005',
      'nom': 'Diallo',
      'prenom': 'Aicha',
      'date_naissance': DateTime(2005, 1, 1),
      'note1': 16.0,
      'note2': 17.0,
      'note3': 15.0,
      'note4': 16.0
    },
    {
      'matricule': 'CI006',
      'nom': 'Traoré',
      'prenom': 'Mamadou',
      'date_naissance': DateTime(2006, 9, 18),
      'note1': 13.0,
      'note2': 12.0,
      'note3': 11.0,
      'note4': 14.0
    },
    {
      'matricule': 'CI007',
      'nom': 'Kone',
      'prenom': 'Aminata',
      'date_naissance': DateTime(2005, 3, 9),
      'note1': 14.0,
      'note2': 15.0,
      'note3': 16.0,
      'note4': 13.0
    },
    {
      'matricule': 'CI008',
      'nom': 'Toure',
      'prenom': 'Kwame',
      'date_naissance': DateTime(2004, 6, 30),
      'note1': 17.0,
      'note2': 18.0,
      'note3': 16.0,
      'note4': 17.0
    },
    {
      'matricule': 'CI009',
      'nom': 'Mensah',
      'prenom': 'Sanaa',
      'date_naissance': DateTime(2005, 4, 5),
      'note1': 12.0,
      'note2': 13.0,
      'note3': 14.0,
      'note4': 15.0
    },
    {
      'matricule': 'CI010',
      'nom': 'Sissoko',
      'prenom': 'Amadou',
      'date_naissance': DateTime(2004, 11, 14),
      'note1': 14.0,
      'note2': 15.0,
      'note3': 15.0,
      'note4': 14.0
    }
  ];

  static List<Eleve> getELeveData() {
    return elevesTrim1
        .map((element) => Eleve(
            Matricule: element['matricule'],
            Nom: element['nom'],
            Prenom: element['prenom'],
            Date_Naissance:
                DateFormat("yyyy-MM-dd").format(element['date_naissance']),
            Note1: element['note1'],
            Note2: element['note2'],
            Note3: element['note3'],
            Note4: element['note4']))
        .toList();
  }
}
