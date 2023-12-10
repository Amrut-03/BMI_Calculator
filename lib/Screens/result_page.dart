import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import '../Components/reusable.dart';
import 'package:bmi_calculator/Components/BottomButton.dart';

class result extends StatelessWidget {
  result({required this.bmiResult,required this.Interpretation,required this.ResultText});
  final bmiResult;
  final ResultText;
  final Interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container(
            margin: EdgeInsets.only(top: 30.0),
              padding: EdgeInsets.only(top: 10.0),
              child: Text('Your Result',textAlign: TextAlign.center,
              style: Ktitlestyle,),
          ),
          ),
          Expanded(
            flex: 5,
              child:reusable(
                colour: KClr,
                cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(ResultText,
                    style:Kresulttextstyl,),
                    Text(bmiResult,style: KBMItextstyle,),
                    Text(Interpretation,style: KDescripttext,textAlign: TextAlign.center,)
                  ],
              ), onpress: () {  },) 
          ),
          BottomButton(bottomtitle: 'Re-Calculate', ontap: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
