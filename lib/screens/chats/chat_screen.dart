import 'package:chatmessagings/constants.dart';
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

  int _selectedIndexBottom = 0;

  void showSnackbarFloatingButton(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Tambah people disini'),
        backgroundColor: Colors.black87,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  void setIndexBottom(int indexSelect) {
    setState(() {
      _selectedIndexBottom = indexSelect;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBarWidget(),
      body: const BodyChat(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackbarFloatingButton(context);
        },
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: createBottomNavbar(),
    );
  }

  BottomNavigationBar createBottomNavbar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People'),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_5.png'),
              radius: 14,
            ),
            label: 'Profile'),
      ],
      currentIndex: _selectedIndexBottom,
      type: BottomNavigationBarType.fixed,
      onTap: (int position) {
        setIndexBottom(position);
      },
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
