import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}
