import 'package:flutter/material.dart';
import '../constant.dart';
import '../Screens/result_page.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.bottomtitle, required this.ontap});
  final String bottomtitle;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: KBottomHeight,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffde4dff),
        ),
        child: Center(
          child: Text(
            bottomtitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}