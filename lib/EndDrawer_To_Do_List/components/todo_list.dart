// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ToDoList extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoList({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(15),
              )
          ]
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              //check box
              Checkbox(
                value: taskCompleted, 
                onChanged: onChanged,
                activeColor: Colors.deepPurple,
                ),
        
              //task name
              Text(
                taskName, 
                style: TextStyle(
                  decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                  decorationColor: Colors.deepOrange,
                  decorationThickness: 3,
                  fontSize: 18, 
                  color: Colors.tealAccent
                )
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}