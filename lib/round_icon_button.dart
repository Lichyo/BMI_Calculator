import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 8,
      child: Icon(icon),
      shape: CircleBorder(),
      onPressed: onPressed,
      fillColor: kLittleIconColor,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
    );
  }
}