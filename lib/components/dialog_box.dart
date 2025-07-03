import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo3_app/components/buttons_comp.dart';
import 'package:todo3_app/data/database_class.dart';

import '../models/todo.dart';
import '../providers/todo_provider.dart';

class MyDialog extends StatefulWidget{
  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  // TodoDatabse db = TodoDatabse();
  final _taskController = TextEditingController();
  void onSave(){
    if(_taskController.text!=''){
    Todo? tod;
    tod = Todo(task: _taskController.text);
    context.read<TodoProvider>().addTask(Todo(task: _taskController.text));
    // db.updateDatabase();
    Navigator.pop(context);

    }else{
      
    }
   
    
    

  }
  void onCancel(){
    Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context){
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.yellow.shade300
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 28),
              child: SizedBox(
                height: 40,
                child: TextField(
                  
                  controller: _taskController,
                  cursorHeight: 16,
                  
                  
                  cursorColor: Colors.black,
                  cursorWidth: 1.4,
                  decoration: InputDecoration(
                    labelText: 'Enter new task',
                    
                    labelStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.black
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        
                        color: Colors.black
                      )
                    ),
                  contentPadding: EdgeInsets.only(left: 2, bottom: 16),
                  
                    
                  focusColor: Colors.black,
                    
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(child: 'Save', onChanged: onSave,),
                  SizedBox(width: 18,),
                  MyButton(child: 'Cancel', onChanged: onCancel)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}