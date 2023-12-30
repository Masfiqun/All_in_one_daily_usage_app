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
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      color: Colors.blue,
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
  
 mySnackBar(context,msg){
    return ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(content: Text(msg)));
  }

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
      );
  }

  int myIndex = 0;
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(
        title: const Text('All_in_one_daily_usage_app'),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 60,
        elevation: 100,
        backgroundColor: Colors.black,
        foregroundColor: Colors.tealAccent,
      ),


      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState((){
            myIndex  = index;
          });
        },

        currentIndex: myIndex,
        selectedItemColor: Colors.tealAccent,
        backgroundColor: Colors.black12,

        items:const [
                      BottomNavigationBarItem(icon: Icon(Icons.alarm_add), label: 'Alarm'),
                      BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Timer'),
                      BottomNavigationBarItem(icon: Icon(Icons.lock_clock), label: 'Stop Watch'),
        ]
      ),


      floatingActionButton: FloatingActionButton(
        
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){MySnackBar("Set new alarm", context);},
        backgroundColor: Colors.black,
        foregroundColor: Colors.tealAccent,

        ),

      
    );
    
  }
}