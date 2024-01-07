// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

void main(){
  runApp(Alarm());
}

class Alarm extends StatelessWidget {
  const Alarm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Alarm(),
    );
  }
}

class alpart extends StatefulWidget {
  const alpart({super.key});

  @override
  State<alpart> createState() => _alpartState();
}

class _alpartState extends State<alpart> {

  ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    padding: EdgeInsets.all(10),
    backgroundColor: Colors.black,
    foregroundColor: Colors.tealAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
    )
  );

  MyAlertDialog(context){
      return showDialog(
        context: context,
        builder: (BuildContext context){
        return Expanded(
          child: AlertDialog(
            title: Text('New Alarm'),
            content: Text('Do you want to creat a new alarm?'),
            actions: [
              ElevatedButton(onPressed: (){;}, child: Text('Yes'), style: buttonStyle,),
              ElevatedButton(onPressed: (){;}, child: Text('No'), style: buttonStyle,),
            ]
           ),
        );
      }
    );   
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){MyAlertDialog(context);},
        backgroundColor: Colors.black,
        foregroundColor: Colors.tealAccent,
        ),
    );
  }
}