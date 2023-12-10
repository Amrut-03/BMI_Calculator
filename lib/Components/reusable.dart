import 'package:flutter/material.dart';

class reusable extends StatelessWidget {
  reusable({ required this.colour,required this.cardchild,required this.onpress});
    final Color colour;
    final Widget cardchild;
    final Function() onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          color: colour,)
      ),
    );
  }
}