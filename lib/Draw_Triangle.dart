

import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:vector_math/vector_math.dart' hide Colors;
import 'MyTriangle.dart';


class Draw_Triangle extends StatefulWidget {

  //Length of triangle's side a
  double a;

  //Length of triangle's side b
  double b;

  //Angle between side a and side b
  double angle_ab;

  //Triangle's inner color
  Color color;

  //Triangle's side color. Transparent by default.
  Color sideColor;

  //Triangle's side width. 0 by default.
  double sideWidth;

  //Triangle's rotation in degrees, from 0 to 360. 0 by default (No rotation so a is horizonal to x axis).
  double rotate;

  //The alignment point from which a and b are drawn (-1<x<1,-1<y<1); (0,0) by default (Scaffold's center).
  Offset offset;


  Draw_Triangle({
    required this.angle_ab,
    required this.a,
    required this.b,
    required this.color,
    this.sideWidth=0,
    this.sideColor=Colors.transparent,
    this.rotate=0,
    this.offset=const Offset(0,0)
  });


  //Calculate side c of tge triangle based on the trigonometric equation:
  //c^2=a^2+b^2-2*a*b*cos(angle_ab)
  double get c {
    return sqrt(pow(a, 2)+pow(b,2)-2*a*b*cos(radians(angle_ab)));
  }


  //Calculate the area of the triangle based on the trigonometric equation:
  //area=(a*b*sin(angle_ab))/2
  double get area{
    return (a*b*sin(radians(angle_ab)))/2;
  }


  //Calculate length of height drawn from angle_ab to side c, based on the simple equation of triangle's area:
  //area=(h*side)/2
  double get height_c{
    return (2*area)/c;
  }


  @override
  _Draw_TriangleState createState() => _Draw_TriangleState();
}

class _Draw_TriangleState extends State<Draw_Triangle> {
  @override

  Widget build(BuildContext context) {
    return Align(
      //Set offset from which a and b are drawn
      alignment: Alignment(widget.offset.dx,widget.offset.dy),
      //Rotate triangle
      child: RotationTransition(
          turns: AlwaysStoppedAnimation(widget.rotate/ 360),
          //Draw triangle
          child: Container(child: CustomPaint(size: const Size(0, 0), painter: MyTriangle(angle_ab: widget.angle_ab,a:widget.a,b:widget.b,color:widget.color,sideColor: widget.sideColor,sideWidth:widget.sideWidth)))),
    );
  }
}
