// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:first_project/Alarm/Pages/h_page.dart';

void main(){
  runApp(const Alarm());
}

class Alarm extends StatelessWidget {
  const Alarm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: h_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

