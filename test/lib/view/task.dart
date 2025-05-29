import 'package:flutter/material.dart';
import 'package:test/data/userTask.dart';
class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.edit),
                        SizedBox(width: 15),
                        Icon(Icons.delete),
                      ],
                    ),
                    title: Text(
                      listTask[index].Title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    subtitle: Text(listTask[index].Description),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(height: 10);
                },
                itemCount: listTask.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
