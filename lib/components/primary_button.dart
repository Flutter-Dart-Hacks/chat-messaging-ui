import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:chatmessagings/constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.75),
    this.callbackString,
  }) : super(key: key);

  final String text;

  // Penggunaan callback di Dart Flutter
  // https://www.digitalocean.com/community/tutorials/flutter-widget-communication
  final VoidCallback press;
  final Function(String)? callbackString;
  final Color color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      padding: padding,
      color: color,
      minWidth: double.infinity,
      onPressed: press,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
