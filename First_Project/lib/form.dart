import 'package:first_project/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      home: const HomeActivity(),
      // theme: ThemeData(primarySwatch: Colors.green),
      // darkTheme:ThemeData(primarySwatch: Colors.blue),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,

    );
  }



}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Fill up your information...'),
          // actions: [Widget]
          
          ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(decoration: InputDecoration(),)
        ],
      ),
  );
    
  }

  

}