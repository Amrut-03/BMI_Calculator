import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';

class drawer extends StatelessWidget {
  const drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff1F1D1D),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Column(
            children: [
              SafeArea(
                child: CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/Amrut_.jpg')),
              ),
              Text('Amrut Khochikar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  height: 2,
                ),
              ),
              Text('Flutter Developer',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 2,
              ),
              ),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(Icons.email,size: 18,),
                  Text('  amrutkhochikar@gmail.com',style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75),
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Icon(Icons.phone,size: 12,),
                    Text('  9172518904',style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      height: 2,
                    ),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}