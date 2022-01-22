import 'package:flutter/material.dart';
import 'package:chatmessagings/screens/chats/components/bodychat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isVisibleSubtitle = true;
  String titleHomepage = 'Chats';
  String subtitleHomepage = 'Freedom Chat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBarWidget(),
      body: const BodyChat(),
    );
  }

  AppBar createAppBarWidget() {
    return AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(titleHomepage),
          Visibility(
            child: Text(
              subtitleHomepage,
              style: const TextStyle(fontSize: 14),
            ),
            visible: isVisibleSubtitle,
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white,
            semanticLabel: 'Search chat',
          ),
        ),
      ],
      automaticallyImplyLeading: false,
    );
  }
}
