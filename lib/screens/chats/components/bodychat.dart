import 'package:chatmessagings/constants.dart';
import 'package:chatmessagings/components/filled_outline_button.dart';
import 'package:chatmessagings/models/chat.dart';
import 'package:chatmessagings/screens/chats/components/chat_card.dart';
import 'package:chatmessagings/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

class BodyChat extends StatefulWidget {
  const BodyChat({Key? key}) : super(key: key);

  @override
  _BodyChatState createState() => _BodyChatState();
}

class _BodyChatState extends State<BodyChat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: kPrimaryColor,
            padding: const EdgeInsets.fromLTRB(
                kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
            child: Row(
              children: [
                FillOutlineButton(press: () {}, text: 'Recent Message'),
                const SizedBox(width: kDefaultPadding),
                FillOutlineButton(
                  press: () {},
                  text: 'Active',
                  isFilled: false,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ChatCards(
                  chatItem: chatsData[index],
                  pressList: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const MessageDetail();
                      }),
                    );
                  },
                );
              },
              itemCount: chatsData.length,
            ),
          )
        ],
      ),
    );
  }
}
