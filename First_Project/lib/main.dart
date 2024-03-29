// ignore_for_file: prefer_const_constructors

import 'package:first_project/Alarm/alarm.dart';
import 'package:first_project/Clock/clock.dart';
import 'package:first_project/EndDrawer_To_Do_List/to_do.dart';
import 'package:first_project/Stop_Watch/stop_watch.dart';
import 'package:first_project/Timer/timer.dart';
import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.black,
      foregroundColor: Colors.tealAccent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))));

  mySnackBar(context, msg) {
    return ScaffoldMessenger.of(context as BuildContext)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
            child: AlertDialog(
                title: Text('New Alarm'),
                content: Text('Do you want to creat a new alarm?'),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      ;
                    },
                    child: Text('Yes'),
                    style: buttonStyle,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ;
                    },
                    child: Text('No'),
                    style: buttonStyle,
                  ),
                ]),
          );
        });
  }

  int myIndex = 0;
  List<Widget> widgetList = [
    Alarm(),
    Clock(),
    Timer(),
    StopWatch(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          'Way_to_go',
          style: TextStyle(color: Colors.amberAccent),
        ),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 60,
        elevation: 5,
        shadowColor: Colors.amberAccent,
        backgroundColor: Colors.black,
        foregroundColor: Colors.tealAccent,
      ),

      body: IndexedStack(
        children: widgetList,
        index: myIndex,
      ),

      // bottomNavigationBar: Container(
      //   height: 60,
      //   width: double.infinity,
      //   color: Colors.blue,
      //   child: BottomNavigationBar(
      //     onTap: (index){
      //       setState((){
      //         myIndex  = index;
      //       });
      //     },

      //     currentIndex: myIndex,

      //   backgroundColor: Colors.blue,
      //     selectedItemColor: Colors.teal,
      //     unselectedItemColor: Colors.black,

      //     items: [
      //             BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
      //             BottomNavigationBarItem(icon: Icon(Icons.watch_later_outlined), label: 'Clock'),
      //             BottomNavigationBarItem(icon: Icon(Icons.timelapse_sharp), label: 'Timer'),
      //             BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Stop Watch'),
      //     ]
      //   ),
      // ),

      bottomNavigationBar: MoltenBottomNavigationBar( 
          barColor: Colors.black,
          barHeight: 50,
          borderColor: Colors.amber,
          borderSize: 1,
          domeCircleColor: Colors.tealAccent,
          selectedIndex: myIndex, 
          onTabChange: (index){
            setState((){
              myIndex = index;
            });
          },
          
          tabs: [
            MoltenTab(icon: Icon(Icons.alarm),selectedColor: Colors.black, unselectedColor: Colors.amberAccent),
            MoltenTab(icon: Icon(Icons.watch_later_outlined),selectedColor: Colors.black, unselectedColor: Colors.amberAccent),
            MoltenTab(icon: Icon(Icons.timelapse_sharp),selectedColor: Colors.black, unselectedColor: Colors.amberAccent),
            MoltenTab(icon: Icon(Icons.timer),selectedColor: Colors.black, unselectedColor: Colors.amberAccent),
          ],
      ),      
      
      drawer: Drawer(
        backgroundColor: Colors.black,
        elevation: 50,
        shadowColor: Colors.tealAccent,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName:
                    Text("Masfiqun", style: TextStyle(color: Colors.white)),
                accountEmail: Text(
                  "masfiqunahmed2@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture:
                    Image.network("https://wallpapercave.com/wp/wp2550666.jpg"),
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.person),
              title: Text('Profile', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.safety_check),
              title: Text('BMI Counter', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.add_task),
              title:
                  Text('Step Counter', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              onTap: () {ToDoAp();},
              leading: Icon(Icons.checklist),
              title: Text('To-Do List', style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.settings),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),

      endDrawer: Drawer(
        backgroundColor: Colors.black,
        shadowColor: Colors.blueGrey,
        elevation: 50,
        // foregroundColor: Colors.tealAccent,
        child: ListView(
          children: [
            Text('To-Do List', style: TextStyle(fontSize: 40.0,color: Colors.deepOrangeAccent),)
          ]
        ),
      ),
    );
  }
}
