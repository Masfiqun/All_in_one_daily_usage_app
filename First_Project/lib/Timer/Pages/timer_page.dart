import 'package:flutter/material.dart';

class timer_page extends StatefulWidget {
  const timer_page({super.key});

  @override
  State<timer_page> createState() => _timer_pageState();
}

class _timer_pageState extends State<timer_page> {

  

  //Time picker adding
  void _showTimePicker(){
    showTimePicker(
      context: context, 
      initialTime: TimeOfDay.now()
    );
  }
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          onPressed: _showTimePicker,
          style: ElevatedButton.styleFrom(
            elevation: 20,
            shadowColor: Colors.amberAccent,
            surfaceTintColor: Colors.deepPurple,
            primary: Colors.black
          ),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('PICK TIME', style: TextStyle(color: Colors.teal, fontSize: 30, ),),
          ),
        ),
      ),
    );
  }
}