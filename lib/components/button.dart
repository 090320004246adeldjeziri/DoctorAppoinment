import 'package:doctor_apoinement/utils/config.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.title,
      required this.disable,
      required this.onPressed,
      required this.width});

  final String title;
  final bool disable;
  final Function() onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Config.primaryColor),
        onPressed: disable ? null : onPressed,
        child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
