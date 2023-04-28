import 'package:flutter/material.dart';

import 'mesFonctionEtConstantes.dart';

class monDrawer extends StatelessWidget {
  const monDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 5,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 1, 44, 40)),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Angella Yu",
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "London, AppSchool",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider(),
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 70,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Mardi",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text("22", style: TextStyle(fontSize: 60)),
                    Text("2023", style: TextStyle(fontSize: 20)),
                  ]),
            ),
            const SizedBox(
              height: 30,
            ),
            const MesBoutonsNavigationDRawer(),
            const Spacer(),
            const Center(
              child: Text("Hello Angella, Wellcome back",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
