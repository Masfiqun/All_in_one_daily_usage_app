import 'package:flutter/material.dart';


class h_page extends StatefulWidget {
  const h_page({super.key});

  @override
  State<h_page> createState() => _h_pageState();
}

class _h_pageState extends State<h_page> {

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

      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){MyAlertDialog(context);},
        backgroundColor: Colors.tealAccent,
        foregroundColor: Colors.black,
        ),

      body: Text('Alarm', style: TextStyle(fontSize: 40, color: Colors.amberAccent),),
    );
  }
}