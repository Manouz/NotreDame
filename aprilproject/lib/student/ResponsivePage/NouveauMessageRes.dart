import 'package:flutter/material.dart';

import '../model/nouveauxMessage.dart';
import '../view/message_view.dart';

class nouvaeuxMessageCardRes extends StatefulWidget {
  const nouvaeuxMessageCardRes({
    super.key,
    required this.monNouveauMessage,
  });

  final List<NouveauxMessage> monNouveauMessage;

  @override
  State<nouvaeuxMessageCardRes> createState() => _nouvaeuxMessageCardRes();
}

class _nouvaeuxMessageCardRes extends State<nouvaeuxMessageCardRes> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          // width: MediaQuery.of(context).size.width / 3,
          height: 300,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: widget.monNouveauMessage.length,
            itemBuilder: (context, int index) {
              final messages = widget.monNouveauMessage[index];
              return ListTile(
                title: Text(messages.auteurDuMessage),
                subtitle: Text(
                  messages.premierePhraseMss,
                ),
                trailing: CircleAvatar(
                  radius: 25,
                  foregroundImage:
                      AssetImage("assets/images/${messages.imageAuteur}"),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 5,
              );
            },
          ),
        ),
      ),
    );
  }
}
