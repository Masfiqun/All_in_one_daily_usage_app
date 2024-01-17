import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:first_project/EndDrawer_To_Do_List/pages/home_page.dart';

void main() async{

  //init the hive(to store the data)
   await Hive.initFlutter();

  //open a box
  // var box = await Hive.openBox('mybox');


  runApp(const ToDoAp());
}

class ToDoAp extends StatelessWidget {
  const ToDoAp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}