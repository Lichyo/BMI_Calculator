import 'package:bmi_calculator/reusable_card.dart';

import 'input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Calculate extends StatelessWidget {
  // const Calculate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kScaffoldBackgroundColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          ReusableCard(
            cardChild: Text(
              'InputPage'
            ),
            onPress: (){
              Navigator.pushNamed(context, 'input_page');
            },
          ),
        ],
      ),
    );
  }
}
