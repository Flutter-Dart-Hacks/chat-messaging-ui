import 'package:chatmessagings/constants.dart';
import 'package:chatmessagings/models/chat.dart';
import 'package:flutter/material.dart';

class ChatCards extends StatelessWidget {
  const ChatCards({
    Key? key,
    required this.chatItem,
    required this.pressList,
  }) : super(key: key);

  final Chat chatItem;
  final VoidCallback pressList;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pressList();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(chatItem.image),
                  radius: 24,
                ),
                Visibility(
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        width: 3,
                      ),
                    ),
                  ),
                  visible: chatItem.isActive,
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      chatItem.name,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        chatItem.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(chatItem.time),
            ),
          ],
        ),
      ),
    );
  }
}
