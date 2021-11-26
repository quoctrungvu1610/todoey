import 'package:flutter/foundation.dart';
import 'package:to_doey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  //de tranh trong tuong lai chung ta k bi nham lan la: muon them vao 1 trong tasks ta chi viec su dung tasks.add(Task)
  //ma chung ta phai them 1 function sau do them notifyListener()
  //de tranh loi ni gap lai ta nen set tasks ve private
  List<Task> _tasks = [
    Task(name:'Buy milk',isDone: true),
    Task(name: 'Buy eggs',isDone: false),
    Task(name: 'Buy bread',isDone: false),
  ];
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get taskCount{
    return _tasks.length;
  }
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle,isDone: false);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}