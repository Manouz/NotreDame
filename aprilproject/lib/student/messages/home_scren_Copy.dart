import 'package:flutter/material.dart';

import 'model_message.dart';

class HomeScreenCopy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              child: ListTile(
                title: Text(
                  "Discussions",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.edit_note),
                  color: Colors.blue,
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 2),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                    hintText: "Rechercher ou démarer une discussion",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    suffixIcon: Icon(Icons.search)),
              ),
            )
          ],
        ),
        SizedBox(
          height: 570,
          // appBar: AppBar(
          //   brightness: Brightness.dark,
          //   elevation: 8,
          //   leading: IconButton(
          //     icon: Icon(Icons.menu),
          //     color: Colors.white,
          //     onPressed: () {},
          //   ),
          //   title: Text(
          //     'Inbox',
          //     style: TextStyle(
          //       color: Colors.white,
          //     ),
          //   ),
          //   actions: <Widget>[
          //     IconButton(
          //       icon: Icon(Icons.search),
          //       color: Colors.white,
          //       onPressed: () {},
          //     ),
          //   ],
          // ),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Message chat = chats[index];
              return MessageTIle(chat: chat);
            },
          ),
        ),
      ],
    );
  }
}

class MessageTIle extends StatelessWidget {
  const MessageTIle({
    super.key,
    required this.chat,
  });

  final Message chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        backgroundImage: AssetImage(chat.sender.imageUrl),
      ),
      title: Text(
        "${chat.sender.name}",
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
      ),
      subtitle: Text(
        "${chat.text}",
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      trailing: Text("${chat.time}"),
      onTap: () {},
      splashColor: Colors.grey,
    );
  }
}
