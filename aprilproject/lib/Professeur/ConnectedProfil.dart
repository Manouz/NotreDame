import 'package:flutter/material.dart';

class ConnectedProfil extends StatelessWidget {
  const ConnectedProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        child: Image.asset("assets/images/face3.jpg"),
        borderRadius: BorderRadius.circular(70),
      ),
      title: Text("Laurence Abebie"),
      subtitle: Text("Professeur de français"),
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //contentPadding: EdgeInsets.all(10),
    );
  }
}
