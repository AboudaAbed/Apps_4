import 'dart:math';

import 'package:flutter/material.dart';
import 'package:app_colors/component/Lapoul.dart';
import 'package:app_colors/component/Button.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}
class HomePageState extends State<HomePage>{

  List colors = [Colors.white,Colors.yellow,Colors.blue,Colors.red,
                 Colors.green,Colors.black,Colors.brown,Colors.teal,
                 Colors.purple,Colors.grey,Colors.orange,Colors.lime,
                 Colors.cyan,Colors.pink,Colors.indigo,Colors.primaries];

  Random random1 = new Random();
  Random random2 = new Random();
  Random random3 = new Random();
  Random random4 = new Random();

  int color1 = 0 ;
  int color2 = 0 ;
  int color3 = 0 ;
  int color4 = 0 ;

  void changeIndex(){
    setState(() {
      color1 = random1.nextInt(15);
      color2 = random2.nextInt(15);
      color3 = random3.nextInt(15);
      color4 = random4.nextInt(15);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(
          child: Text('Colors Genertor',style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
        backgroundColor: Colors.green[600],
      ),
      backgroundColor: Colors.green[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Lapoul(color: colors[color1]),
            Lapoul(color: colors[color2]),
            Lapoul(color: colors[color3]),
            Lapoul(color: colors[color4]),
            Button(function: (){
              changeIndex();
            } ),
          ],
        ),
      ),
    );
  }
  
}