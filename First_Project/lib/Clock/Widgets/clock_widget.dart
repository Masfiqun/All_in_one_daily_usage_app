import 'dart:math';


import 'package:first_project/Clock/UI/style.dart';
import 'package:first_project/Clock/UI/time_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClockWidget extends StatefulWidget{
   ClockWidget(this.time,{Key? key}) : super(key: key);

  TimeModel time;
  
  @override
  State<ClockWidget> createState() => _ClockWidgetState();

}

class _ClockWidgetState extends State<ClockWidget>{
  @override
  Widget build(BuildContext context) {
    return Container(
      //let's add a decoration to the container
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        //let's add some effects
        boxShadow: [
          BoxShadow(color: AppStyle.primaryColorDark.withAlpha(80),blurRadius: 38.0),
        ]
      ),
      height: 300,
      width: 300,
      child: CustomPaint(
        painter: ClockPainter(widget.time),
      ),
    );
  }
}


class ClockPainter extends CustomPainter{

  //let's set the time parameter
  TimeModel? time;
  ClockPainter(this.time);

  @override
  void paint(Canvas canvas, Size size) {
    //let's calculate the time possition
    double secRad = ((pi/2) - (pi/30) * this.time!.sec!) % (2*pi);
    double minRad = ((pi/2) - (pi/30) * this.time!.min!) % (2*pi);
    double hourRad = ((pi/2) - (pi/6) * this.time!.hour!) % (2*pi);

    
    
    //let's set some important points co-ordinates
    var centerX = size.height/2;
    var centerY = size.width/2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);

    //setting the clock co-ordinate
    var secHeight = radius / 2;
    var minHeight = radius / 2 - 10;
    var hourHeight = radius / 2 - 25;

    var seconds = Offset(
      centerX + secHeight*cos(secRad), centerY - secHeight * sin(secRad) );
    var minutes = Offset(
      centerX + minHeight*cos(minRad), centerY - minHeight * sin(minRad) );
    var hours = Offset(
      centerX + hourHeight*cos(hourRad), centerY - hourHeight * sin(hourRad) );


    //setting the brush
    var fillBrush = Paint()
    ..color = AppStyle.primaryColor
    ..strokeCap = StrokeCap.round;

    var centerDotBrush = Paint()..color = Colors.white;

    //setting the hand brush
    var secBrush = Paint()
    ..color = Colors.redAccent
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 2
    ..strokeJoin = StrokeJoin.round
      ;

    var minBrush = Paint()
    ..color = Colors.tealAccent
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 3
    ..strokeJoin = StrokeJoin.round
      ;

    var hourBrush = Paint()
    ..color = Colors.tealAccent
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5
    ..strokeJoin = StrokeJoin.round
      ;
    //drawing the body
    canvas.drawCircle(center, radius - 40, fillBrush);

    //drawing the clock hands
    canvas.drawLine(center, seconds, secBrush);
    canvas.drawLine(center, minutes, minBrush);
    canvas.drawLine(center, hours, hourBrush);

    //drawing the center dot
    canvas.drawCircle(center, 16, centerDotBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    
    return true;
  }
}
