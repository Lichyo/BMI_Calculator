import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({this.cardChild, this.color});

  Color color;
  Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}