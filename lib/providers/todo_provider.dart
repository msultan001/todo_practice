import 'package:flutter/material.dart';

import '../data/database_class.dart';
import '../models/todo.dart';

class TodoProvider extends ChangeNotifier{
  // TodoDatabse db = TodoDatabse();
   List<Todo> tasksList = [
    Todo(task: 'Make Todo App'),
    Todo(task: "Upload to Github")
   ];

   void addTask(Todo todo){
    tasksList.add(todo);
    notifyListeners();
    
  }

  void removeTask(Todo todo){
    tasksList.remove(todo);
    notifyListeners();
    // db.updateDatabase();
  }

  List<Todo> get taskLilst =>tasksList;
}