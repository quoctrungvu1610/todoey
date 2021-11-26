import 'package:flutter/material.dart';
import 'package:to_doey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:to_doey/models/task_data.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}



