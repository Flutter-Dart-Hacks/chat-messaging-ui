import 'package:chatmessagings/screens/messages/components/chat_input_field.dart';
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
        const Spacer(),
        ChatInputField(
            chatContentEditingController: _chatContentEditingController)
      ],
    );
  }
}
