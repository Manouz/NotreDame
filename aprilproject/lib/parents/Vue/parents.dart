import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Parents extends StatelessWidget {
  const Parents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: double.infinity,
          height: 70,
          color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0, top: 14),
                    child: Text(
                      "Bienvenu Mr/Mme Sarr",
                      style: GoogleFonts.lobsterTwo(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          child:
              // child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              //   ClipRect(
              //     child: Container(
              //       width: 300,
              //       height: 500,
              //       color: Colors.amber,
              //     ),
              //   ),
              //   SizedBox(
              //     height: 10,
              //   ),
              //   Row(
              //     //mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       ClipRRect(
              //         child: Container(
              //           width: 300,
              //           height: 500,
              //           color: Colors.amber,
              //         ),
              //         //borderRadius: BorderRadius.circular(30),
              //       ),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 600,
                  height: 300,
                  color: Colors.red,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 00,
                  height: 100,
                  color: Colors.blue,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Row(children: [
                      Container()
                    ],)

                  ]),
                ),
              ),
            ],
          ),
        )
      ]),
    );
    //]));
  }
}
