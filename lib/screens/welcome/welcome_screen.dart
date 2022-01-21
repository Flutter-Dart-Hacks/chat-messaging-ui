import 'package:flutter/material.dart';
import 'package:chatmessagings/screens/signinsignup/signin_signup.dart';
import 'package:chatmessagings/constants.dart';

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
              flex: 1,
            ),
            const Image(
              image: AssetImage('assets/images/welcome_image.png'),
              fit: BoxFit.cover,
              height: 310,
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
              flex: 4,
            ),
            FittedBox(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SigninOrSignup();
                      },
                    ),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Text(
                        'Skip',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.color
                                  ?.withOpacity(0.8),
                            ),
                      ),
                    ),
                    const SizedBox(
                      width: kDefaultPadding / 3,
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
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
