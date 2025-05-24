import 'package:flutter/material.dart';

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
                      "Task to do",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    subtitle: Text("small description with do time"),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(height: 10);
                },
                itemCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
