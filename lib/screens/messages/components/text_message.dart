import 'package:chatmessagings/constants.dart';
import 'package:chatmessagings/models/chat_message.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.chatMessage,
  }) : super(key: key);

  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(chatMessage.isSender ? 1 : 0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        chatMessage.text,
        style: TextStyle(
            color: chatMessage.isSender
                ? Colors.white
                : Theme.of(context).textTheme.bodyText1?.color),
      ),
    );
  }
}
