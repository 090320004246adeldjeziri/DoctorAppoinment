import 'package:flutter/material.dart';

import '../utils/config.dart';

class SoscialButton extends StatelessWidget {
  const SoscialButton({super.key, required this.social});

  final String social;
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10),
        side: const BorderSide(width: 1, color: Colors.black),
      ),
      onPressed: (() {}),
      child: SizedBox(
        width: Config.screenWidth! * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/$social.png',
              width: 40,
              height: 40,
            ),
            Text(
              social.toUpperCase(),
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
