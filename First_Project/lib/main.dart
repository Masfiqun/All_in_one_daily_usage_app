// ignore_for_file: prefer_const_constructors

import 'package:first_project/Alarm/alarm.dart';
import 'package:first_project/Clock/clock.dart';
import 'package:first_project/Stop_Watch/stop_watch.dart';
// import 'package:first_project/Alarm/alarm.dart';
// import 'package:first_project/EndDrawer_To_Do_List/to_do.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
     return  MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
       
    );
  }
}

class HomeActivity extends StatefulWidget{
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {


ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    padding: EdgeInsets.all(10),
    backgroundColor: Colors.black,
    foregroundColor: Colors.tealAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
    )
  );


  
 mySnackBar(context,msg){
    return ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(content: Text(msg)));
  }

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
      );
  }


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
    });
  }

  int myIndex = 0;
  List<Widget> widgetList = [
    Alarm(),
    Clock(),
    Text('Timer', style: TextStyle(fontSize: 40)),
    StopWatch(),
  ];
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
                title: const Text('Way_to_go', style: TextStyle(color: Colors.amberAccent),),
                titleSpacing: 0,
                centerTitle: true,
                toolbarHeight: 60,
                elevation: 10,
                backgroundColor: Colors.black,
                foregroundColor: Colors.tealAccent,
              ),


      body:  
          IndexedStack(
            children: widgetList,
            index: myIndex,
          ),


      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState((){
            myIndex  = index;
          });
        },

        currentIndex: myIndex,
        selectedItemColor: Colors.tealAccent,
        unselectedItemColor: Colors.black,
        

        items: [
                BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
                BottomNavigationBarItem(icon: Icon(Icons.watch_later_outlined), label: 'Clock'),
                BottomNavigationBarItem(icon: Icon(Icons.timelapse_sharp), label: 'Timer'),
                BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Stop Watch'),
        ]
      ),

      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text("Masfiqun", style: TextStyle(color: Colors.white)),
                accountEmail: Text("masfiqunahmed2@gmail.com", style: TextStyle(color: Colors.white),),
                currentAccountPicture: Image.network("https://wallpapercave.com/wp/wp2550666.jpg"),
                  ),
                ),

              ListTile(leading: Icon(Icons.person),title: Text('Profile', style: TextStyle(color: Colors.white)),),
              ListTile(leading: Icon(Icons.safety_check),title: Text('BMI Counter', style: TextStyle(color: Colors.white)),),
              ListTile(leading: Icon(Icons.add_task),title: Text('Step Counter', style: TextStyle(color: Colors.white)),),
              ListTile(leading: Icon(Icons.settings),title: Text('Settings', style: TextStyle(color: Colors.white)),),
          ],
        ),
      ),


      endDrawer: Drawer(
        
        backgroundColor: Colors.black,
        // foregroundColor: Colors.tealAccent,
        child: ListView(          
            children: const [
              
              DrawerHeader( 
                
              child: Text("To-do List", style: TextStyle(color: Colors.white),),
              ),
            ],
         ),
      ),
    );
  }
}