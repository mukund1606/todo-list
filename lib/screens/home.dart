import 'package:flutter/material.dart';
import 'package:todo_list/model/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: _buildAppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [searchBox()],
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
