import 'package:chatmessagings/constants.dart';
import 'package:chatmessagings/models/chat_message.dart';
import 'package:chatmessagings/screens/messages/components/text_message.dart';
import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({Key? key, required this.chatMessage}) : super(key: key);

  final ChatMessage chatMessage;

  MainAxisAlignment getAxisAlignmentContent(ChatMessage message) {
    return message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start;
  }

  List<Widget> getAvatarSenderImage(BuildContext context, ChatMessage message) {
    if (!message.isSender) {
      return [
        const CircleAvatar(
          radius: 12,
          backgroundImage: AssetImage("assets/images/user_2.png"),
        ),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ];
    } else {
      return [];
    }
  }

  Widget checkMessageTypeContainer(ChatMessage message) {
    switch (message.messageType) {
      case ChatMessageType.text:
        return TextMessage(chatMessage: message);
      case ChatMessageType.audio:
        return AudioMessage(chatMessage: message);
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: kDefaultPadding,
          left: kDefaultPadding / 2,
          right: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: getAxisAlignmentContent(chatMessage),
        children: [
          ...getAvatarSenderImage(context, chatMessage),
          checkMessageTypeContainer(chatMessage),
        ],
      ),
    );
  }
}

class AudioMessage extends StatelessWidget {
  const AudioMessage({Key? key, required this.chatMessage}) : super(key: key);

  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      height: 30,
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75,
        vertical: kDefaultPadding / 2.5,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(chatMessage.isSender ? 1 : 0.1),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
