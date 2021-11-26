import 'package:flutter/material.dart';
import 'package:to_doey/models/task_data.dart';
import 'package:to_doey/widgets/tasks_list.dart';
import 'package:to_doey/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>AddTaskScreen((newTaskTitle){
            // setState(() {
            //   tasks.add(Task(name: newTaskTitle, isDone: false));
            // });
            //Tat man hinh pop khi an add
            Navigator.pop(context);
          }));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0) ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,),
                SizedBox(height: 10.0,),
                Text('Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                      // Provider.of<TaskData>(context).tasks = tasks object
                    '${Provider.of<TaskData>(context).taskCount} tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                //mo rong het man hinh ma k can dung height
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
              decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}


