import 'package:chatmessagings/constants.dart';
import 'package:chatmessagings/models/chat_message.dart';
import 'package:chatmessagings/screens/messages/components/audio_message.dart';
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
      case ChatMessageType.video:
        return VideoMessage(chatMessage: message);
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

class VideoMessage extends StatelessWidget {
  const VideoMessage({Key? key, required this.chatMessage}) : super(key: key);

  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
