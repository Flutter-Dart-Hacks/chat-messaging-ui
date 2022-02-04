import 'package:chatmessagings/constants.dart';
import 'package:chatmessagings/models/chat_message.dart';
import 'package:chatmessagings/screens/messages/components/audio_message.dart';
import 'package:chatmessagings/screens/messages/components/text_message.dart';
import 'package:chatmessagings/screens/messages/components/video_message.dart';
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

  Widget checkStatusMessageDotSender(ChatMessage _message) {
    if (_message.isSender) {
      return MessageStatusDot(message: _message);
    } else {
      return const SizedBox(
        width: 0,
        height: 0,
      );
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
          checkStatusMessageDotSender(chatMessage),
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatefulWidget {
  const MessageStatusDot({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  State<MessageStatusDot> createState() => _MessageStatusDotState();
}

class _MessageStatusDotState extends State<MessageStatusDot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: kDefaultPadding / 2),
      height: 20,
      width: 20,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.done,
        size: 10,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
