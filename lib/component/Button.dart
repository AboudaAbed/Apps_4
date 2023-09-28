import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Button extends StatefulWidget{
  @override
  final VoidCallback function;

  Button({required this.function});

  State<StatefulWidget> createState() {
    return ButtonState();
  }
}
class ButtonState extends State<Button>{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:

          widget.function

      ,
      child: Container(
        height: 50.h,
        width: 140.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.green[400],
          borderRadius: BorderRadius.circular(15)
        ),
        child: Text('On Click',style: TextStyle(fontSize:20,color: Colors.white70 ),),
      ),
    );
  }
  
}