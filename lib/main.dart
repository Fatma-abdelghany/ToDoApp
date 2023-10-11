import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session14/view/taskPage.dart';
import 'package:session14/viewModel/appViewModel.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=>AppViewModel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: TaskPage(),
    );
  }
}

