import 'package:flutter/material.dart';
import 'constants.dart';

class IconContainer extends StatelessWidget {
  IconContainer({@required this.icon, @required this.content});
  final String content;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          content,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
