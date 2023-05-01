import 'package:flutter/material.dart';
import 'package:aprilproject/student/ResponsivePage/PageHomeRes.dart';
import 'HomePageStud.dart';

class TransitionPage extends StatelessWidget {
  const TransitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: const Text("Cliquez ici"),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePageStud()));
        },
      ),
    );
  }
}
