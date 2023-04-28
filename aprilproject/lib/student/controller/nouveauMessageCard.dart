import 'package:flutter/material.dart';

import '../model/nouveauxMessage.dart';
import '../view/message_view.dart';

class nouvaeuxMessageCard extends StatefulWidget {
  const nouvaeuxMessageCard({
    super.key,
    required this.monNouveauMessage,
  });

  final List<NouveauxMessage> monNouveauMessage;

  @override
  State<nouvaeuxMessageCard> createState() => _nouvaeuxMessageCardState();
}

class _nouvaeuxMessageCardState extends State<nouvaeuxMessageCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.width / 5.7,
          child: InkWell(
            onTap: () {
              /* Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => MessagesView()))); */
            },
            child: ListView.separated(
              itemCount: widget.monNouveauMessage.length,
              itemBuilder: (context, int index) {
                final messages = widget.monNouveauMessage[index];
                return Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          foregroundImage:
                              AssetImage("images/${messages.imageAuteur}"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  messages.auteurDuMessage,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  messages.dateEtHeurreMssg,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 150.0),
                              child: Text(
                                messages.premierePhraseMss,
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
