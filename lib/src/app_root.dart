import 'package:flutter/material.dart';
import 'package:app_colors/screens/HomePage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AppRoot extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child){
        return MaterialApp(
          home: HomePage(),
        );
    },
    ) ;
  }
}