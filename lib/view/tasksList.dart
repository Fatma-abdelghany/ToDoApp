import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session14/viewModel/appViewModel.dart';
class TasksList extends StatelessWidget {
   TasksList({super.key});
   bool completed=false;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context,viewModel,child){
       return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color:Colors.grey ,
            borderRadius: BorderRadius.circular(15)

        ),
        child: ListView.separated(
          itemCount: viewModel.tasksNum,
          separatorBuilder: (context, index){
            return SizedBox(height: 10,);
          },
          itemBuilder: (context, index){
            return Card(
              color: Colors.white,
              child: ListTile(
                leading: Checkbox(
                  value: viewModel.getStatusTask(index),
                  onChanged: (bool? value) {
                    viewModel.changeTaskStatus(index,value!);
                     },
                ),
                title: Text(viewModel.getTasksTitle(index),style: TextStyle(color: Colors.black),),
              ),
            );
          },


        ),
      );
    });
  }
}
