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
        onPressed: (){MyAlertDialog(context);},
        backgroundColor: Colors.black,
        foregroundColor: Colors.tealAccent,
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
      
    );
    
  }
}