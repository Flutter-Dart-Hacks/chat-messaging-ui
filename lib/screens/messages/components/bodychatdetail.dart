import 'package:chatmessagings/constants.dart';
import 'package:chatmessagings/screens/messages/components/chat_input_field.dart';
import 'package:chatmessagings/models/chat_message.dart';
import 'package:flutter/material.dart';

class BodyMessageDetail extends StatefulWidget {
  const BodyMessageDetail({Key? key}) : super(key: key);

  @override
  State<BodyMessageDetail> createState() => _BodyMessageDetailState();
}

class _BodyMessageDetailState extends State<BodyMessageDetail> {
  String stringChatContent = '';

  final TextEditingController _chatContentEditingController =
      TextEditingController(text: '');

  void getChatContent() {
    stringChatContent = _chatContentEditingController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return MessageItem(
                  chatMessage: demoChatMessages[index],
                );
              },
              itemCount: demoChatMessages.length,
            ),
          ),
        ),
        ChatInputField(
            chatContentEditingController: _chatContentEditingController)
      ],
    );
  }
}

class MessageItem extends StatelessWidget {
  const MessageItem({Key? key, required this.chatMessage}) : super(key: key);

  final ChatMessage chatMessage;

  MainAxisAlignment getAxisAlignmentContent(ChatMessage message) {
    return message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: getAxisAlignmentContent(chatMessage),
      children: [
        Container(
          margin: const EdgeInsets.only(top: kDefaultPadding),
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.75,
            vertical: kDefaultPadding / 2,
          ),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            chatMessage.text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
