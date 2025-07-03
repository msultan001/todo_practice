import 'package:hive_flutter/hive_flutter.dart';

import '../models/todo.dart';

class TodoDatabse{
  List<Todo> todolist = [];
  var _mybox = Hive.box("mybox");
  // void createInitialData(){
  //   todolist = ["Make Tutorial"];
  // }
  void updateDatabase(){
    _mybox.put("TODOLIST", todolist);
  }
  void loadData(){
    todolist = _mybox.get("TODOLIST");
  }
}