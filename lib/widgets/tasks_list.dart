import 'package:flutter/material.dart';
import 'package:to_doey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_doey/models/task_data.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(itemBuilder: (context,index){
          final task = taskData.tasks[index];
          return TaskTile(
            //widget dai dien cho stateful widget de lay dc data tren stful
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback:(checkboxState){
                taskData.updateTask(task);
              },
              longPressCallback: (){
                taskData.deleteTask(task);
            },
          );
        }, itemCount: taskData.taskCount,
        );
      },
    );
  }
}