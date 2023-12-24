

import 'package:flutter/material.dart';

void main(List<String> args) {
  
    runApp(const MyApp());
  


}



class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme:ThemeData(primarySwatch: Colors.blue),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home:   HomeActivity()
      );
  }

}


// ignore: must_be_immutable
class HomeActivity extends StatelessWidget{
    HomeActivity({super.key});

  // var MyItems=[
  //   {"img":"https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face.jpg","title":"nothing"}
  // ];

  ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    padding: EdgeInsets.all(10),
    backgroundColor: Colors.black,
    foregroundColor: Colors.tealAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
    )
  );
  
  

  // ignore: non_constant_identifier_names
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
          title: Text('Alert'),
          content: Text('Do you want to creat a account'),
          actions: [
            ElevatedButton(onPressed: (){;}, child: Text('Yes'), style: buttonStyle,),
            ElevatedButton(onPressed: (){;}, child: Text('No'), style: buttonStyle,),
          ]
          ),
          );
    });
  }




  @override
  Widget build(BuildContext context) {

     


  //    ButtonStyle buttonStyle2=OutlinedButton.styleFrom(
    
  //   backgroundColor: Colors.white,
  //   foregroundColor: Colors.tealAccent,
  //   shape: RoundedRectangleBorder(
      
  //   )
  // );


  
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
        title: const Text("Mafiqun Ahmed"),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 60,
        elevation: 100,
        backgroundColor: Colors.black,
        foregroundColor: Colors.tealAccent,
        
        // actions: [
        
        // IconButton(onPressed: (){MySnackBar("Alarm has been set", context);}, icon: Icon(Icons.access_alarm_outlined)),
        // IconButton(onPressed: (){}, icon: Icon(Icons.view_sidebar))
        
        // ],
        
        ),
      
      floatingActionButton: FloatingActionButton(

        elevation: 10,
        child: Icon(Icons.add),
        onPressed: () {MySnackBar("set new Alarm", context);},
        backgroundColor: Colors.black,
        foregroundColor: Colors.tealAccent,
       
     ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: const [
                BottomNavigationBarItem(icon: Icon(Icons.alarm_add) ,label: "Alarm"),
                // BottomNavigationBarItem(icon: Icon(Icons.lock_clock) ,label: "Clock"),
                BottomNavigationBarItem(icon: Icon(Icons.timer) ,label: "Timer"),
                BottomNavigationBarItem(icon: Icon(Icons.watch) ,label: "Stop watch"),
        ],
        // backgroundColor: Colors.black,
        // foregroundColor: Colors.tealAccent,
        
        
        ),
      
      drawer: Drawer(
        
        backgroundColor: Colors.white,
        // foregroundColor: Colors.tealAccent,
        child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text("Masfiqun",style: TextStyle(color: Colors.tealAccent),),
                accountEmail: Text("masfiqunahmed2@gmail.com",style: TextStyle(color: Colors.tealAccent)),
                currentAccountPicture: Image.network("https://scontent.fdac27-2.fna.fbcdn.net/v/t39.30808-6/391620692_3688633168126159_4574215476188254108_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeHjEIEeqDtlL5BpLcKRwDkVtnja3Et5Vdi2eNrcS3lV2OVEvodb3jBVZzlldfR8mzhnV8nEyegCuqNt0PBnI8RG&_nc_ohc=X1VnCX6370oAX-f-zE2&_nc_ht=scontent.fdac27-2.fna&oh=00_AfBH6EBbA95YALuwDoA8x-dPfaUNKI_wselrFklNdKh7mw&oe=65888323"),
              ),
              ),
              
              
              ListTile(leading: Icon(Icons.person),title: Text("Profile")),
              ListTile(leading: Icon(Icons.safety_check),title: Text("BMI Counter")),
              ListTile(leading: Icon(Icons.add_task),title: Text("Step Counter")),
              ListTile(leading: Icon(Icons.settings),title: Text("Setting")),
            ],

        ),
      ),
      
      endDrawer: Drawer(
        
        backgroundColor: Colors.white,
        // foregroundColor: Colors.tealAccent,
        child: ListView(          
            children: [
              
              DrawerHeader( 
                
              child: Text("To-do List")
               
              
              ),

            ],

        ),
      ),
      
      // body: ListView.builder(
      //   itemCount: MyItems.length,
      //   itemBuilder: (context,index){
      //     return GestureDetector(
      //       onTap: () {
              
      //       },
      //       child: Container(
      //         margin: EdgeInsets.all(10),
      //         width: double.infinity,
      //         height: 200,

            
      //       ),
      //     );
      //   },
      //   )

      body: 
    // Container(
    //     height: 250,
    //     width: 250,
    //     alignment: Alignment.center,
    //     margin: EdgeInsets.fromLTRB(60, 90, 10, 40),
    //     padding: EdgeInsets.all(60),
        
    //     decoration: BoxDecoration(
    //       color: Colors.tealAccent,
    //       border: Border.all(color: Colors.black, width: 5),
    //   ),
    //   child: Text("Masfiqun")
    // ),

    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
    //   children: [
    //     Container(
    //       height: 100,
    //       width: 100,
    //       child: Image.network("https://wallpapercave.com/wp/wp2550666.jpg"),
    //     ),

    //     Container(
    //       height: 100,
    //       width: 100,
    //       child: Image.network("https://wallpapercave.com/wp/wp2550666.jpg"),
    //     )
    //   ],
    //   )

    // Center(
    //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   child: 
    //     // TextButton(onPressed: (){MySnackBar("jongli", context);}, child: Text('Button')),
    //     ElevatedButton(onPressed: (){MyAlertDialog(context);}, child: Text('Create Account'),style: buttonStyle),
    //     // OutlinedButton(onPressed: (){MySnackBar('I am outlined', context);}, child: Text('Outlined'), style:buttonStyle2)
      
    // )
    




//form
  Column(
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