import 'package:flutter/material.dart';
import '../Components/reusable.dart';
import '../Components/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/icon.dart';
import '../constant.dart';
import '../Components/floating_button.dart';
import 'result_page.dart';
import '../Components/BottomButton.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}
// Color MaleClr = UnClr;
// Color FemaleClr = UnClr;



// void update(Gender selectedgender)
// {
//   if(selectedgender == Gender.male){
//     if(MaleClr == UnClr){
//       MaleClr = Clr;
//       FemaleClr = UnClr;
//     }
//     else
//       {
//         MaleClr = UnClr;
//       }
//     MaleClr == UnClr ? MaleClr = Clr && FemaleClr = UnClr : MaleClr = UnClr;
//   }
//   if(selectedgender == Gender.female){
//     if(FemaleClr == UnClr){
//       FemaleClr = Clr;
//       MaleClr = UnClr;
//     }
//     else{
//       FemaleClr = UnClr;
//     }
//   }
// }

enum Gender{
  male,
  female,
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(child:Row(
            children: [
              Expanded(child: reusable(
                onpress: (){
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                colour: selectedGender == Gender.male ? KClr:KUnClr,
                cardchild: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE',),),
              ),
              Expanded(child: reusable(
                onpress: (){
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                colour: selectedGender == Gender.female ? KClr:KUnClr,
              cardchild: IconContent(icon: FontAwesomeIcons.venus,label: 'FEMALE',),
              ),
              ),
            ],
          ), ),
          Expanded(child: Row(
            children: [
              Expanded(child: reusable(
                onpress: (){},
                colour: KClr,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',style: Klabeltextstyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),style: Ktextstyle,),
                      Text('cm',style: Klabeltextstyle,)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Color(0xffde4dff),
                        inactiveColor: Colors.white,
                        onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),),),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: reusable
                (onpress: (){},
                colour: KClr,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('WEIGHT',
                  style: Klabeltextstyle,),
                  Text(weight.toString(),style: Ktextstyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      floatButton(icon: FontAwesomeIcons.minus, clr: Color(0xffde4dff),
                        onpress: () {
                        setState(() {
                          weight--;
                        });
                        },),
                      SizedBox(width: 15.0,),
                      floatButton(icon: FontAwesomeIcons.plus, clr: Color(0xffde4dff),
                        onpress: () { setState(() {
                          weight++;
                        }); },),
                  ],
                  ),
                ],
              ),
              ),),
              Expanded(child: reusable(onpress: (){},
                colour: KClr,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE',style: Klabeltextstyle,),
                    Text(age.toString(), style: Ktextstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        floatButton(icon: FontAwesomeIcons.minus, clr:Color(0xffde4dff),
                          onpress: () { setState(() {
                            age--;
                          }); }, ),
                        SizedBox(width: 15.0,),
                        floatButton(icon: FontAwesomeIcons.plus,clr:Color(0xffde4dff),
                          onpress: () { setState(() {
                            age++;
                          }); },),
                      ],
                    )
                  ],
                ),),)
            ],
          )),
          BottomButton(ontap: (){

            calculatorBrain calc = calculatorBrain(weight: weight, height: height);

            Navigator.push(context, MaterialPageRoute(builder: (context)=> result(
              bmiResult: calc.CalculateBMI(),
            ResultText: calc.getResult(),
            Interpretation: calc.Interpretation(),),),);
          }, bottomtitle: 'Calculate', )
        ],
      ),
      drawer: drawer(),
    );
  }
}








