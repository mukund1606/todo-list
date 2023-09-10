import 'package:flutter/material.dart';

import '../model/colors.dart';
import '../model/todo_item.dart';
import '../widgets/todo_item.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: _buildAppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Stack(
            children: [
              Column(
                children: [
                  searchBox(),
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30, bottom: 20),
                          child: const Text(
                            "All Todos",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        for (ToDo todo in todosList)
                          ToDoItem(
                            todo: todo,
                          )
                      ],
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 10,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Add new Todo Item",
                          border: InputBorder.none,
                        ),
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget searchBox() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: const TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                suffixIcon: Icon(
                  Icons.search,
                  color: grey,
                  size: 20,
                ),
                suffixIconConstraints:
                    BoxConstraints(maxHeight: 20, minWidth: 25),
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(color: grey))));
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Icon(Icons.menu, color: black, size: 30),
        SizedBox(
          height: 40,
          width: 40,
          child: ClipOval(
            child: Image.asset("assets/images/profile_pic.png"),
          ),
        )
      ]),
      backgroundColor: bgColor,
    );
  }
}
