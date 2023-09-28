import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Lapoul extends StatefulWidget{
  @override
 final Color color;



  Lapoul({required this.color});

  State<Lapoul> createState() => _LapoulState();
}
class _LapoulState extends State<Lapoul> {
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 60,
           backgroundColor: widget.color,
        ),
        Container(
          height: 55.h,
          width: 155.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white60,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 7.0,
                spreadRadius: 2.0
              )
            ]
          ),
          child: Text(widget.color.toString(),
            style:TextStyle(fontSize: 15,color:Colors.black54) ,),
        )
      ],
    );
  }
}