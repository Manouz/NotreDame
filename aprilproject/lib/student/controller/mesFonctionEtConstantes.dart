import 'package:flutter/material.dart';

Container monContainerMoyenne(
    {required Widget leTextIn,
    required Color color,
    required Color color1,
    required double width,
    required double height}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        color: color,
        border: Border.all(color: color1),
        borderRadius: BorderRadius.circular(15)),
    child: Center(
      child: leTextIn,
    ),
  );
}

class MesBoutonsNavigationDRawer extends StatelessWidget {
  const MesBoutonsNavigationDRawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {},
            child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.note,
                  color: Colors.black,
                )),
          ),
          InkWell(
            onTap: () {},
            child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.message,
                  color: Colors.black,
                )),
          ),
          InkWell(
            onTap: () {},
            child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.school,
                  color: Colors.black,
                )),
          )
        ],
      ),
    );
  }
}
