import 'package:chatmessagings/components/primary_button.dart';
import 'package:chatmessagings/constants.dart';
import 'package:flutter/material.dart';

class SigninOrSignup extends StatefulWidget {
  const SigninOrSignup({Key? key}) : super(key: key);

  @override
  _SigninOrSignupState createState() => _SigninOrSignupState();
}

class _SigninOrSignupState extends State<SigninOrSignup> {
  // Ambil icon sesuai warna brighness
  String getIconImageBrightness(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.light
        ? 'assets/images/Logo_light.png'
        : 'assets/images/Logo_dark.png';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Image(
                image: AssetImage(
                  getIconImageBrightness(context),
                ),
                fit: BoxFit.cover,
                height: 150,
              ),
              const Spacer(),
              PrimaryButton(
                text: 'Sign In',
                press: () {},
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: 'Sign Up',
                press: () {},
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
