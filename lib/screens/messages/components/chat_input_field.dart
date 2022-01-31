import 'package:chatmessagings/constants.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({
    Key? key,
    required TextEditingController chatContentEditingController,
  })  : _chatContentEditingController = chatContentEditingController,
        super(key: key);

  final TextEditingController _chatContentEditingController;

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding / 3,
        right: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 32,
            color: const Color(0xff087949).withOpacity(0.1),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Material(
              // Menggunakan parent material dan inkwell
              // https://stackoverflow.com/a/65760259
              child: InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.mic,
                    color: kPrimaryColor,
                  ),
                ),
                splashColor: Colors.amber,
              ),
              color: Colors.transparent,
              shape: const CircleBorder(),
              clipBehavior: Clip.hardEdge,
            ),
            const SizedBox(
              width: 1,
            ),
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Material(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.sentiment_satisfied_alt_outlined,
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.color
                              ?.withOpacity(0.64),
                        ),
                        splashColor: Colors.amber,
                      ),
                      color: Colors.transparent,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Type message here',
                          border: InputBorder.none,
                        ),
                        onChanged: (String value) {},
                        controller: widget._chatContentEditingController,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    Material(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file,
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.color
                              ?.withOpacity(0.64),
                        ),
                        splashColor: Colors.amber,
                        padding: const EdgeInsets.only(left: 0, right: 0),
                      ),
                      color: Colors.transparent,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                    ),
                    Material(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.color
                              ?.withOpacity(0.64),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        splashColor: Colors.amber,
                      ),
                      color: Colors.transparent,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
