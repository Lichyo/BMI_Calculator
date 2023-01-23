import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_container.dart';
import 'constants.dart';
import 'round_icon_button.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'calculate_page.dart';
import 'calculate_brain.dart';

CalculateBrain calculateBrain;
int height = 170;
int weight = 60;
int age = 20;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum CalculatorButton { minus, plus }

enum Gender { male, female }

Color maleCardColor = kInactiveCardColor;
Color femaleCardColor = kInactiveCardColor;
Gender selectedGender;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kScaffoldBackgroundColor,
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
                          ? kActiveCardColor
                          : kInactiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
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
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kLargeLabelTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    activeColor: kBottomContainerColor,
                    inactiveColor: kGreyTextColor,
                    min: minHeight,
                    max: maxHeight,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kLargeLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight -= 1;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kLargeLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (age > 0) {
                                    age -= 1;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age += 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            content: 'CALCULATE',
            onPressed: () {
              CalculateBrain calc = CalculateBrain(weight: weight, height: height);
              print('Result : ' + calc.getResult());
              print('BMI : ' + calc.calculateBMI());
              print('Interpretation' + calc.getInterpretation());
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CalculatePage(calc: calc,),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

void updateWeight(CalculatorButton selectedButton) {
  if (selectedButton == CalculatorButton.plus) {
    weight += 1;
  } else if (selectedButton == CalculatorButton.minus && weight > 0) {
    weight -= 1;
  }
}
