import 'package:bmi_calculator/MyWidgets/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/MyWidgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'bmi_brain.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    BmiBrain bm = BmiBrain(height,weight);

    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              'Your Results',
              style: resultTag,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 6,
            child: CustomCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      bm.getStat(),
                      style: statTag,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      bm.getBmi(),
                      style: numTag,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      bm.getTip(),
                      style: tipTag,
                      textAlign: TextAlign.center,
                    ),
                  )

                ],
              ),
              colour: Color(kFront),
            ),
          ),
          Bottom_button('RE-CALCULATE',(){
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
