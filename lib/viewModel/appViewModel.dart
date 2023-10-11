
import 'package:flutter/material.dart';
import 'package:session14/model/user.dart';
import 'package:session14/view/bottomSheetDelete.dart';

import '../model/task.dart';

class AppViewModel extends ChangeNotifier{
  List<Task> tasks=<Task>[];
  User user= User(userName: "Fatma Abdelghany");

  void addTask(Task newTask){
    tasks.add(newTask);
    notifyListeners();
  }
  void removeTask(int taskNum){
    tasks.removeAt(taskNum);
    notifyListeners();
  }
  String get userName=>user.userName;
  int get tasksNum=>tasks.length;
  int get remainingTaskNum=>tasks.where((element) => !element.completed).length;
 // int get remainingTaskNum=>tasks.where((task) => task.completed!).length;
String getTasksTitle(int index){
  return tasks[index].title;

}
bool getStatusTask(int index){
  return tasks[index].completed;
}
 void changeTaskStatus(int index,bool status){
   tasks[index].completed=status;
   notifyListeners();
 }
 void deleteAllTasks(){
  tasks.clear();
  notifyListeners();
 }
  void deleteCompletedasks(){
   // tasks.where((element) => !element.completed).toList().clear();
    for(Task task in tasks){
      bool taskStatus=task.completed;
      if(taskStatus==true){
        tasks.remove(task);
      }

    }

    notifyListeners();
  }
  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: ((context) {
        return bottomSheetView;
      }),);
  }
}