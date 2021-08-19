import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {

  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.2, 0.8],
        colors: [
          Color(0xff2E305F),
          Color(0xff202333)
        ]
      )
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Purple Gradinet
        Container(decoration: boxDecoration ),
        Positioned(
          top: 550,
          left: 250,
          child: _PinkBox(angle: 5, width: 250,heigth: 250,)
        ),
        Positioned(
          top: 300,
          left: -90,
          child: _PinkBox(angle:4,width: 250, heigth: 250,)
        ),

        // Pink box
        Positioned(
          top: -150,
          left: -30,
          child: _PinkBox(angle: 5,)
        ),
          
      ],
    );
  }
}


class _PinkBox extends StatelessWidget {

  const _PinkBox({Key? key, this.angle, this.width, this.heigth}) : super(key: key);
  final int? angle;
  final double? width;
  final double? heigth;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / angle!,
      child: Container(
        width:width?? 360,
        height: heigth?? 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ]
          )
        ),
      ),
    );
  }
}