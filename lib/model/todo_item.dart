class ToDo {
  int? id;
  String? todoText;
  bool isDone;

  ToDo({required this.todoText, required this.id, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: 1, todoText: "Buy Groceries"),
      ToDo(id: 2, todoText: "Pay Electricity Bill", isDone: true),
      ToDo(id: 3, todoText: "Book Flight Tickets"),
      ToDo(
        id: 4,
        todoText: "Check Emails",
      ),
      ToDo(todoText: "Work on Flutter", id: 5)
    ];
  }
}
