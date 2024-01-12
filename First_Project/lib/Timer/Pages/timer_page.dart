import 'package:flutter/material.dart';

class timer_page extends StatefulWidget {
  const timer_page({super.key});

  @override
  State<timer_page> createState() => _timer_pageState();
}

class _timer_pageState extends State<timer_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Timer', style:TextStyle(fontSize: 40.0, color: Colors.amberAccent)),
    );
  }
}