import 'package:flutter/material.dart';
import 'Screens/input_page.dart';

void main()=>runApp(BMI());

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(color: Color(0xffde4dff)),
          textTheme: TextTheme(
              bodyText2: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
          ),
      ),
      home: InputPage(),
    );
  }
}




