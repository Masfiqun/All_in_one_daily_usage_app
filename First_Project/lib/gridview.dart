import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      home: HomeActivity(),
      // theme: ThemeData(primarySwatch: Colors.green),
      // darkTheme:ThemeData(primarySwatch: Colors.blue),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,

    );
  }



}

// ignore: must_be_immutable
class HomeActivity extends StatelessWidget{
  HomeActivity({super.key});


  var MyItems=[
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"jail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"mail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"pail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"lail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"kail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"rail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"qail"},
  ];

  mySnackBar(context,msg){
    return ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(content: Text(msg)));
  }

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

      body: 

            GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 0,
                                childAspectRatio: 1.2,
                                ),
                                  itemCount: MyItems.length,
                                    itemBuilder: (context,index){
                                          return GestureDetector(
                                              onTap: () {mySnackBar(context, MyItems[index]['title']);},
                                              child: Container(
                                                margin: EdgeInsets.all(5),
                                                width: double.infinity,
                                                height: 220,
                                                  child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,),
                                              ),
                                          );
                                        },
                                      )
  );
    
  }

  

}