import 'package:flutter/material.dart';
import 'package:session14/view/addTask.dart';
class FloatingActionBtn extends StatelessWidget {
  const FloatingActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTask()));

        }
        ,
      backgroundColor: Colors.grey[850],
      child: Icon(Icons.add),
    );
  }
}
