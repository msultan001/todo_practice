import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:todo3_app/providers/todo_provider.dart';

import 'pages/todo_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  var box =  await Hive.openBox("mybox");
  runApp(
    ChangeNotifierProvider(
      create: (context)=>TodoProvider(),
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme()
        ),
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: ToDo(),
        ),
    ));
}