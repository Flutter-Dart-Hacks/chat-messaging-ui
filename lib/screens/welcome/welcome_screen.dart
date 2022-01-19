import 'package:chatmessagings/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const Image(
              image: AssetImage('assets/images/welcome_image.png'),
              fit: BoxFit.cover,
            ),
            const Spacer(
              flex: 3,
            ),
            Text(
              'Selamat datang di Freedom Chat',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              'Silahkan berbicara secara aman dan rahasia',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.color
                    ?.withOpacity(0.64),
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            FittedBox(
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Skip',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.color
                                ?.withOpacity(0.8),
                          ),
                    ),
                    const SizedBox(
                      width: kDefaultPadding / 4,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.color
                          ?.withOpacity(0.8),
                    )
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
