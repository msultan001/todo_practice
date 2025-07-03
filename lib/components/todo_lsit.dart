import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/todo_provider.dart';

class TodoLsit extends StatefulWidget{
  @override
  State<TodoLsit> createState() => _TodoLsitState();
}

class _TodoLsitState extends State<TodoLsit> {
  // @override
  // void initState(){
  //   super.initState();
    
  // }
  @override
  Widget build(BuildContext context){
  
    return ListView.builder(
      
      itemCount: context.watch<TodoProvider>().tasksList.length,
      itemBuilder: (context, index){
        return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 16),
      child: Container(
       
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Colors.yellow.shade300,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: [
            
            
            
               Text(
                (context).watch<TodoProvider>().tasksList[index].task,
                style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500),),
            IconButton(
              icon: Icon(Icons.delete),
               onPressed:(){
               context.read<TodoProvider>().removeTask(context.read<TodoProvider>().tasksList[index]);
               
               },
               )
          ],
        ),
      ),
    );
      },
    );
  }
}