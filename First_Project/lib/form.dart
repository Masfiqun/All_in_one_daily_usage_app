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

    ButtonStyle buttonStyle3=OutlinedButton.styleFrom(
    
      minimumSize: Size(double.infinity, 40),
      backgroundColor: Colors.black,
      foregroundColor: Colors.tealAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
    )

  );

    return Scaffold(
        appBar: AppBar(
          title: Text('Fill up your information...'),
          // actions: [Widget]
          
          ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText: 'First name'))),
          Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText: 'Last name'))),
          Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText: 'E-mail Address'))),
        
        Padding(padding: EdgeInsets.all(10),child: ElevatedButton(onPressed: () {;},child: Text('Submit'), style: buttonStyle3,), ),
        
        ],
      ),
  );
    
  }

  

}