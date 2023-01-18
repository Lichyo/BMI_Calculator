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

enum Gender { male, female }

Color maleCardColor = inactiveCardColor;
Color femaleCardColor = inactiveCardColor;
Gender selectedGender;

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
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      cardChild: IconContainer(
                        icon: FontAwesomeIcons.mars,
                        content: 'MALE',
                      ),
                      color: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContainer(
                      icon: FontAwesomeIcons.venus,
                      content: 'FEMALE',
                    ),
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
