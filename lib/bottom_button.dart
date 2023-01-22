import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.content, @required this.onPressed});
  final Function onPressed;
  final String content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        child: Text(
          content,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        height: 80.0,
        width: double.infinity,
        color: kBottomContainerColor,
      ),
    );
  }
}
