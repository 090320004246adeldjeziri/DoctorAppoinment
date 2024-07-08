import 'package:doctor_apoinement/components/button.dart';
import 'package:doctor_apoinement/components/login_form.dart';
import 'package:doctor_apoinement/components/soscial_button.dart';
import 'package:doctor_apoinement/utils/config.dart';
import 'package:doctor_apoinement/utils/text.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SafeArea(
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          Text(
            AppText.enText['welcome_text']!,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Config.spaceSmall,
          Text(
            AppText.enText['signIn_text']!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Config.spaceSmall,
          const LoginForm(),
          Config.spaceSmall,
          Button(
              title: "Sign In",
              disable: false,
              onPressed: () {
                Navigator.of(context).pushNamed('main');
              },
              width: double.infinity),
          Config.spaceSmall,
          Center(
            child: TextButton(
              onPressed: (() {}),
              child: Text(
                AppText.enText['forgot_password']!,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          // add social buttons there
          const Spacer(),
          Center(
            child: Text(
              AppText.enText['social_login']!,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500),
            ),
          ),
          Config.spaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SoscialButton(
                
                social: 'gmail',
              ),
              SoscialButton(social: 'facebook')
            ],
          ),
          Config.spaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppText.enText['signUp_text']!,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                " Sign Up",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
                ],
              )),
    ));
  }
}
