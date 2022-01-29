import 'package:chatmessagings/constants.dart';
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
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: SafeArea(
            child: Row(
              children: [
                Material(
                  // Menggunakan parent material
                  // https://stackoverflow.com/a/65760259
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                      color: kPrimaryColor,
                    ),
                    padding: const EdgeInsets.only(left: 0, right: 0),
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
                            controller: _chatContentEditingController,
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
        )
      ],
    );
  }
}
