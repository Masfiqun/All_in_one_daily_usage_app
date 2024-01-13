import 'package:first_project/Clock/UI/style.dart';
import 'package:first_project/Clock/UI/time_model.dart';
import 'package:first_project/Clock/Widgets/clock_widget.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';



class Clock extends StatefulWidget{
  const Clock({Key? key}) : super(key: key);
  
  @override
  State<Clock> createState() => _ClockState();

}
class _ClockState extends State<Clock>{

//adding the name of week
var week = DateTime.now();
// String dateFormat = dateFormat('dd-MM-yyy').format(week);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              //now we need to upgrade the clock value each seconds
              
              TimerBuilder.periodic(Duration(seconds: 1), builder: (context){
                  
                  var currentTime = DateTime.now();

                  //let's set the digital clock string values
                  String seconds = currentTime.second < 10 ?"0${currentTime.second}":"${currentTime.second}";
                  String minutes = currentTime.minute < 10 ?"0${currentTime.minute}":"${currentTime.minute}";
                  String hours = currentTime.hour < 10 ?"0${currentTime.hour}":"${currentTime.hour}";

                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('Today', style: AppStyle.mainTextThin)],
                      ),
                      Center(
                        child: ClockWidget(TimeModel(
                          currentTime.hour,
                          currentTime.minute, 
                          currentTime.second
                          )
                        )
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("$hours:$minutes:$seconds", style: AppStyle.mainText,),
                          ],
                        ),
                    ],
                  );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}