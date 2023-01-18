import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({this.cardChild, this.color, this.onPress});

  Color color;
  Widget cardChild;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}