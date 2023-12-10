import 'package:flutter/material.dart';
import '../constant.dart';

class floatButton extends StatelessWidget {

  floatButton({required this.icon,required this.clr,required this.onpress});
  final IconData icon;
  final Color clr;
  final Function() onpress;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: onpress,
      shape: CircleBorder(side: BorderSide(color: Color(0xffde4dff),width: 2.0)),
      backgroundColor: KUnClr,
      child: Icon(icon,color: clr,),
    );
  }
}