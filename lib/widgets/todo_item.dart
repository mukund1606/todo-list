import 'package:flutter/material.dart';

import '../model/todo_item.dart';
import '../model/colors.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;

  const ToDoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: ListTile(
          onTap: () {
            print("Tapped");
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: blue,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
                fontSize: 16,
                color: black,
                decoration: todo.isDone ? TextDecoration.lineThrough : null),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: red, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              onPressed: () {
                print("Delete");
              },
              color: Colors.white,
              iconSize: 18,
              icon: const Icon(Icons.delete),
            ),
          ),
        ));
  }
}
