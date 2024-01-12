import 'package:first_project/Timer/Pages/timer_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Timer());
}

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: timer_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}