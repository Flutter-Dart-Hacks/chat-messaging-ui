import 'package:chatmessagings/constants.dart';
import 'package:chatmessagings/screens/messages/components/bodychatdetail.dart';
import 'package:flutter/material.dart';

//Membuat fungsi detail pesan
class MessageDetail extends StatefulWidget {
  const MessageDetail({Key? key}) : super(key: key);

  @override
  State<MessageDetail> createState() => _MessageDetailState();
}

class _MessageDetailState extends State<MessageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppbar(),
      body: const BodyMessageDetail(),
    );
  }

  AppBar createAppbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/user_2.png'),
          ),
          const SizedBox(
            width: kDefaultPadding * 0.75,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Luna Watson',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Active 3m ago',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.local_phone,
            color: Colors.white,
          ),
          tooltip: 'Voice call',
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.videocam,
            color: Colors.white,
          ),
          tooltip: 'Video call',
        ),
        // Popup menu
        // https://flutterrdart.com/flutter-popup-menu-button-example/
        PopupMenuButton(
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: 0,
                child: const Text('Submenu satu'),
                onTap: () {},
                enabled: true,
              ),
              PopupMenuItem(
                value: 1,
                child: const Text('Submenu dua'),
                onTap: () {},
                enabled: false,
              )
            ];
          },
          onSelected: (value) {},
          tooltip: 'Options menu tambahan',
        )
      ],
    );
  }
}
