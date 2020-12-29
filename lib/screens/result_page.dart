

import 'package:bmi/components/constants.dart';
import 'package:bmi/components/bottombutton.dart';
import 'package:bmi/components/ReusableCard.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiresult , @required this.bminumber ,@required this.bmiinterpret}) ;
  final String bmiresult ;
  final String bminumber ;
  final String bmiinterpret ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleStyle,
              ),
            ),
          ),
          Expanded(flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text(
                  bminumber.toUpperCase(),
                  style: kResultStyle,
                ),
                  Text(
                    bmiresult , style: kBMIStyle,
                  ),
                  Text(bmiinterpret ,
                    style: kLastStyle,),],
              ),
            ),),
          BottomButton(
            heading: 'RE-CALCULATE',
            ontap: (){
              Navigator.pop(context) ;
            },
          )
        ],
      ),
    );
  }
}
