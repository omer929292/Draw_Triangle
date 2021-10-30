
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Draw_Triangle.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body:
        Triangle123()
        ));
  }

  Draw_Triangle Triangle123() {
    return Draw_Triangle(
      angle_ab: 90,
      a: 150,
      b: 150,
      color: Colors.blue,
      sideWidth: 5,
      sideColor: Colors.black,
      rotate: 135,
      offset: Offset(0,-0.5),
    );
  }


}
