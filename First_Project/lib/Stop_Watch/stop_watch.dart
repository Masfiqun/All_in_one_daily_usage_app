// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

void main(){
  runApp(const StopWatch());
}

class StopWatch extends StatelessWidget {
  const StopWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stopwatch(),
    );
  }
}

class Stopwatch extends StatefulWidget {
  const Stopwatch({super.key});

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {

  //creating the logic of the app
  int seconds = 0, minutes = 0, hours = 0;
  String digitSeconds = "00", digitMinutes = "00", digitHours = "00";
  Timer? timer;
  bool started = false;
  List<String> laps = [];
  ScrollController _scrollController = ScrollController();


  //Creating the stop timer function

  void stop(){
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  //creating the reset function

  void reset(){
    timer!.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;
      hours   = 0;

      digitSeconds = "00";
      digitMinutes = "00";
      digitHours   = "00";

      started = false;
      laps.clear();
    });
  }

  void addLaps(){
    String lap = "$digitHours:$digitMinutes:$digitSeconds";
    setState(() {
      laps.add(lap);
    });

    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent, 
      duration: Duration(milliseconds: 500), 
      curve: Curves.easeInOut);
  }

  //creating the start timer function

  void start(){
    started = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int localSeconds = seconds + 1;
      int loclaMinutes = minutes;
      int localHours = hours;

      if(localSeconds > 59){
        if(loclaMinutes > 59){
          localHours++;
          loclaMinutes = 0;
        }else{
          loclaMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        seconds = localSeconds;
        minutes = loclaMinutes;
        hours = localHours;
        digitSeconds = (seconds >= 10) ?"$seconds":"0$seconds";
        digitMinutes = (minutes >= 10) ?"$minutes":"0$minutes";
        digitHours = (hours >= 10) ?"$hours":"0$hours";
      });
      });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(      
       
      backgroundColor: Colors.black,

//designing the Stop Watch interface
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              // SizedBox(
              //   height: 20.0,
              // ),
              Center(
                child: Text(
                  '$digitHours:$digitMinutes:$digitSeconds', 
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 82.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                //adding a list builder
                child: ListView.builder(
                  reverse: true,
                  controller: _scrollController,
                  itemCount: laps.length,
                  itemBuilder: (context, index){
                    int reversedIndex = laps.length - 1 - index;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Lap ${index+1}', 
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            '${laps[index]}', 
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    );
                  }
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: (){
                        reset();
                      },
                      shape: StadiumBorder(side: BorderSide(color: Colors.tealAccent)),
                      child: Text('Reset', style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  SizedBox(width: 8.0,),
                  IconButton(
                    onPressed: (){
                      addLaps();
                    }, 
                    icon: Icon(Icons.flag),
                    color: Colors.amber,
                  ),
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: (){
                        (!started) ?start() : stop();
                      },
                      fillColor: Colors.tealAccent,
                      shape: StadiumBorder(),
                      child: Text((!started)?"Start":"Pause", style: TextStyle(color: Colors.black),),
                    ),
                  )
                ],
              ),
            ],
          ),
        ) 
      ), 
    );
  }
}