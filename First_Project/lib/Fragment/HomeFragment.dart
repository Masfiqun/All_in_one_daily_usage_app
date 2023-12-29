import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget{

       ButtonStyle buttonStyle3=OutlinedButton.styleFrom(
    
      minimumSize: Size(double.infinity, 40),
      backgroundColor: Colors.black,
      foregroundColor: Colors.tealAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
    )

  );



  mySnackBar(context,msg){
    return ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(content: Text(msg)));
  }

  

  // ignore: non_constant_identifier_names
  MySnackBar(message,context){

    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }


var MyItems=[
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"jail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"mail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"pail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"lail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"kail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"rail"},
    {"img":"https://wallpapercave.com/wp/wp2550666.jpg","title":"qail"},
  ];



@override
Widget build(BuildContext){





  return GridView.builder(
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
            );



}


}






