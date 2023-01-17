import 'package:flutter/material.dart';
import 'resuable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Color inactiveCardColor = Color(0xFF0A0E21);
Color activeCardColor = Color(0xFF1D1E33);
Color bottomContainerColor = Color(0xFFEB1555);
Color cardColor = Color(0xFF1D1E33);

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: cardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: cardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            width: double.infinity,
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}
