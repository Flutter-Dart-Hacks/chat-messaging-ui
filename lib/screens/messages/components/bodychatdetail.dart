import 'package:chatmessagings/constants.dart';
import 'package:flutter/material.dart';

class BodyMessageDetail extends StatefulWidget {
  const BodyMessageDetail({Key? key}) : super(key: key);

  @override
  State<BodyMessageDetail> createState() => _BodyMessageDetailState();
}

class _BodyMessageDetailState extends State<BodyMessageDetail> {
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
          decoration: const BoxDecoration(color: Colors.green),
          child: SafeArea(
            child: Row(
              children: const [],
            ),
          ),
        )
      ],
    );
  }
}
