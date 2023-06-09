import 'package:flutter/material.dart';

import '../../Professeur/Message/user_model.dart';
import 'model_message.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({required this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _chatBubble(Message message, bool isMe, bool isSameUser) {
    if (isMe) {
      return Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Text(
                message.text,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          !isSameUser
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      message.time,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(message.sender.imageUrl),
                      ),
                    ),
                  ],
                )
              : Container(
                  child: null,
                ),
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Text(
                message.text,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          !isSameUser
              ? Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(message.sender.imageUrl),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      message.time,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                )
              : Container(
                  child: null,
                ),
        ],
      );
    }
  }

  _sendMessageArea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(
                  color: Color.fromARGB(255, 218, 218, 218), width: 0.5))),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: 'Envoyer un message..',
              ),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int prevUserId;
    return Container(
      decoration: BoxDecoration(
          border: Border(
              left: BorderSide(color: Color.fromARGB(255, 252, 248, 207)))),
      child: Column(
        children: [
          AppBar(
            backgroundColor: Color.fromARGB(255, 250, 249, 249),
            // foregroundColor: Colors.blue,
            elevation: 1.0,
            //brightness: Brightness.dark,
            //centerTitle: true,
            title: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                      text: widget.user.name,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue)),
                  TextSpan(text: '\n'),
                  widget.user.isOnline
                      ? TextSpan(
                          text: 'En ligne',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue),
                        )
                      : TextSpan(
                          text: 'Il ya 10 m',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue),
                        )
                ],
              ),
            ),
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.blue,
                onPressed: () {}),
            actions: [
              IntrinsicHeight(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call,
                        color: Colors.blue,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.video_call,
                        color: Colors.blue,
                      )),
                  VerticalDivider(
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 5,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.blue,
                      )),
                ],
              )),
            ],
          ),
          SizedBox(
            height: 600,
            // appBar: AppBar(
            //   brightness: Brightness.dark,
            //   centerTitle: true,
            //   title: RichText(
            //     textAlign: TextAlign.center,
            //     text: TextSpan(
            //       children: [
            //         TextSpan(
            //             text: widget.user.name,
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w400,
            //             )),
            //         TextSpan(text: '\n'),
            //         widget.user.isOnline ?
            //         TextSpan(
            //           text: 'Online',
            //           style: TextStyle(
            //             fontSize: 11,
            //             fontWeight: FontWeight.w400,
            //           ),
            //         )
            //         :
            //         TextSpan(
            //           text: 'Offline',
            //           style: TextStyle(
            //             fontSize: 11,
            //             fontWeight: FontWeight.w400,
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            //   leading: IconButton(
            //       icon: Icon(Icons.arrow_back_ios),
            //       color: Colors.white,
            //       onPressed: () {
            //         Navigator.pop(context);
            //       }),
            // ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.all(20),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      prevUserId = message.sender.id;
                      final bool isSameUser = prevUserId == message.sender.id;
                      return _chatBubble(message, isMe, isSameUser);
                    },
                  ),
                ),
                _sendMessageArea(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
