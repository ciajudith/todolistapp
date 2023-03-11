import 'package:flutter/material.dart';
import 'package:todolistapp/models/task_model.dart';

class ListOfTask extends StatefulWidget {
  const ListOfTask({Key? key}) : super(key: key);

  @override
  State<ListOfTask> createState() => _ListOfTaskState();
}

class _ListOfTaskState extends State<ListOfTask> {
  List TaskList=["1", "description", "12-12-2022 19:28:20", "15-02-2023 12:23:59"];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(top: 60),
          child: Container(
            child: Column(
              children: [
                for(int i=0; i<TaskList.length;i++)
                Container(
                  width: 700,
                  margin: EdgeInsets.only(top: 5,bottom: 5),
                  alignment: Alignment.center,
                  color: Colors.amber,
                  height: 90.0,
                  padding: EdgeInsets.only(left: 25),
                  child: Text(TaskList[i],style: TextStyle(
                    fontSize: 40,color: Colors.white
                  ),
                  ),

                )
              ],
            ),
          )
      ),

    );
  }
}
