import 'package:chatty_chat/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  late final String title;
  late final Color color;
  late final Function onPressed;

  RoundedButton(
      {required this.color, required this.title, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(5.0),
        child: MaterialButton(
          onPressed: () {
            onPressed();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: kTextFieldColor,
          ),
        ),
      ),
    );
  }
}
