import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'TabletHomePage.dart';
// import 'dart:ffi';

class ProgramDay extends StatefulWidget {
  const ProgramDay({super.key});

  @override
  State<ProgramDay> createState() => _ProgramDayState();
}

class _ProgramDayState extends State<ProgramDay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Programme du jour",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Icon(Icons.add),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.grey.withOpacity(0.25),
                    border: Border.all(width: 2.0, color: Colors.white)),
              ),
              Container(
                child: Icon(Icons.remove),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.grey.withOpacity(0.25),
                    border: Border.all(width: 2.0, color: Colors.white)),
              ),
            ],
          ),
          AddProgram(),
        ], //For the verticql bar of the programs
      ),
    );
  }
}

class ProgramPatern extends StatelessWidget {
  const ProgramPatern({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Text(
            "07h30",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Flexible(child: EventProgram()),
        ],
      ),
    );
  }
}

class AddProgram extends StatelessWidget {
  const AddProgram({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: DottedBorder(
        color: Colors.grey,
        strokeWidth: 1,
        dashPattern: [
          5,
          5,
        ],
        child: Container(
            width: 200,
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add)),
      ),
    );
  }
}

class EventProgram extends StatelessWidget {
  const EventProgram({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            height: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color.fromARGB(255, 148, 190, 242)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("1h30min"),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white,
                          )),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            child: Container(
                                child: Icon(Icons.notifications_none),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.grey.withOpacity(0.50),
                                    border: Border.all(
                                        width: 2.0, color: Colors.white))),
                          ),
                          // SizedBox(width: 5.0),
                          Flexible(
                            child: Container(
                              child: Icon(Icons.add_link),
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.grey.withOpacity(0.50),
                                  border: Border.all(
                                      width: 2.0, color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //For the content
                  children: [
                    Text("Terminal A1",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                      //padding: EdgeInsets.all(2.0),
                      child: Text(
                          "Vous avez la possibilté de définir des notes Dont vous aimeriez plustard vous rappeler"),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white.withOpacity(0.50)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              right: 10.0,
              bottom: 1.0,
              child: Card(
                child: Text("Professionnel"),
              ))
        ],
      ),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  dynamic resp;
  ListViewBuilder({Key? key, required this.resp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection:
            (resp == RespSwitch.desktop) ? Axis.vertical : Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ProgramPatern();
        });
  }
}
