import 'package:flutter/material.dart';
import 'package:todo3_app/components/dialog_box.dart';

import '../components/todo_lsit.dart';

class ToDo extends StatelessWidget{
  
  void disp(BuildContext context){
    showDialog(
      context: context,
     builder: (context)=>MyDialog());
       }


  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade600,
        centerTitle: true,
        title: Text('ToDo App'),
      ),
      body: TodoLsit(),
      floatingActionButton: FloatingActionButton(
        onPressed:()=>disp(context),
        backgroundColor: Colors.yellow.shade400,
        shape: CircleBorder(),
        child: Icon(
          Icons.edit,
           color: Colors.grey.shade800,)
        
        ),
    );
  }
}