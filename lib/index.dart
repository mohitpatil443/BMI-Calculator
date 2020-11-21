import 'package:bmi_calculator/bmi_brain.dart';
import 'package:bmi_calculator/constants.dart';
import 'MyWidgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MyWidgets/icon_content.dart';
import 'gender.dart';
import 'MyWidgets/round_button.dart';
import 'MyWidgets/bottom_button.dart';

//No hard coded values used Expanded

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
//  Color maleColor = kinactiveColor;
//  Color femaleColor = kinactiveColor;
//We just store the selected Gender in the selected variable
//We use a ternary operator
//  void changeColor(Gender g){
//    if(g==Gender.male){
//      maleColor = Color(kFront);
//    }else{
//      femaleColor = Color(kFront);
//    }
//
//  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Column must have an expanded widget in order to
          //display side by side

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  //If no content in the Container the size of the
                  //Container shrinks to its children size

                  //Container is needed again and again
                  //In order to reduce the code we
                  //create a personalized widget out of it
                  //by extracting it.

                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: CustomCard(
                      cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                      //If selectedGender not initialized
                      //It is false and hence inactiveColor
                      colour: selectedGender == Gender.male
                          ? Color(kFront)
                          : kinactiveColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: CustomCard(
                      cardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                      colour: selectedGender == Gender.female
                          ? Color(kFront)
                          : kinactiveColor,
                    ),
                  ),
                )
              ],
            ),
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('HEIGHT'),
                        Row(
                          //In order to bring the cm to the baseline we
                          //Establish a baseline to the 180 mark
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(height.toString(), style: numStyle),
                            Text(
                              'cm',
                            )
                          ],
                        ),
                        //If creating custom theme we need to describe
                        //every property of the theme
                        //therefore we use copywith by using default values

                        //Extending the current SliderTheme
                        //Can paste the whole Theme in the themes of the main.dart
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              thumbColor: Color(0xFFEA1556),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                              overlayColor: Color(0x29EA1556)),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    colour: Color(kFront),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    colour: Color(kFront),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                        ),
                        Text(
                          weight.toString(),
                          style: numStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundButton(FontAwesomeIcons.minus, () {
                              setState(() {
                                weight--;
                              });
                            }),
                            SizedBox(
                              width: 5,
                            ),
                            RoundButton(FontAwesomeIcons.plus, () {
                              setState(() {
                                weight++;
                              });
                            }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    colour: Color(kFront),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE'),
                        Text(
                          age.toString(),
                          style: numStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundButton(FontAwesomeIcons.minus, () {
                              setState(() {
                                age--;
                              });
                            }),
                            SizedBox(
                              width: 5.0,
                            ),
                            RoundButton(FontAwesomeIcons.plus, () {
                              setState(() {
                                age++;
                              });
                            })
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
//Button created using Container and hence can be used to set height and width
          //Adding a gesture detector in order to detect a tap on the container

          Bottom_button('CALCULATE BMI', () {
            Navigator.pushNamed(context, '/result');
          }),
        ]);
  }
}
