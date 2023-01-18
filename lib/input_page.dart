import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContainer.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Color inactiveCardColor = Color(0xFF0A0E21);
Color activeCardColor = Color(0xFF1D1E33);
Color bottomContainerColor = Color(0xFFEB1555);
// Color cardColor = Color(0xFF1D1E33);
const int male = 1;
const int female = 2;
Color maleCardColor = inactiveCardColor;
Color femaleCardColor = inactiveCardColor;

void updateIconColor(int gender) {
  if (gender == male) {
    if (maleCardColor == inactiveCardColor) {
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    } else {
      maleCardColor = inactiveCardColor;
    }
  } else {
    if (femaleCardColor == inactiveCardColor) {
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
    } else {
      femaleCardColor = inactiveCardColor;
    }
  }
}

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
                  child: GestureDetector(
                    child: ReusableCard(
                      cardChild: IconContainer(
                        icon: FontAwesomeIcons.mars,
                        content: 'MALE',
                      ),
                      color: maleCardColor,
                    ),
                    onTap: () {
                      setState(() {
                        updateIconColor(male);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: IconContainer(
                        icon: FontAwesomeIcons.venus,
                        content: 'FEMALE',
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        updateIconColor(female);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
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
