import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session14/viewModel/appViewModel.dart';
class BottomSheetDelete extends StatelessWidget {
  const BottomSheetDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context,viewModel,child){
      return Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white60,
        ),
        child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  viewModel.deleteAllTasks();
                  Navigator.pop(context);
                },
                    child: Text("Delete All ")),
                SizedBox(width: 20,),
                ElevatedButton(
                onPressed: (){
                      viewModel.deleteCompletedasks();
                      Navigator.pop(context);
                      },
                    child: Text("Delete Completed "))

              ],
            ),


      );

    });
  }
}

