import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session14/viewModel/appViewModel.dart';
class NumberTasks extends StatelessWidget {
  const NumberTasks({super.key});

  @override
  Widget build(BuildContext context) {
   return Consumer<AppViewModel>(builder: (context,viewModel,child){
     return Container(
       color:Colors.grey[100] ,
       child: Row(
         children: [
           Expanded(
             flex: 1,
             child: Card(
               color:Colors.grey[300] ,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(viewModel.tasksNum.toString()),
                   Text("Total Tasks")
                 ],
               ),
             ),
           ),
           Expanded(
             flex: 1,
             child: Card(
               color:Colors.grey[300] ,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(viewModel.remainingTaskNum.toString()),
                   Text("Remaining")
                 ],
               ),
             ),
           )
         ],
       ),
     );
   });
  }
}
