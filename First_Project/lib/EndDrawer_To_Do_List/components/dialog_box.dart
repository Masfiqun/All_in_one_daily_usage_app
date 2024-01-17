// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:first_project/EndDrawer_To_Do_List/components/buttons.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancle;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancle,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
      backgroundColor: Colors.deepPurple,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //user Input
            TextField(
              controller: controller,
              style: TextStyle(color: Colors.tealAccent),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new Task...",       
              ),
            ),

            //button -> save + cancle
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                Buttons(text: "Save", onPressed: onSave),

                  const SizedBox(width: 6,),

                //cancle button
                Buttons(text: "Cancle", onPressed: onCancle)
              ],
            )
          ],
        ),
      ),
    );
  }
}