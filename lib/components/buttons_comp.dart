// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final String child;
  void Function()? onChanged;
  MyButton({required this.child, required this.onChanged});
  
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onChanged,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        decoration: BoxDecoration(
          color:  Colors.yellow
        ),
        child: Text(child),
      ),
    );
  }
}