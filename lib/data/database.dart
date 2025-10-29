import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //   reference the box
  final _myBox = Hive.box("myBox");

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Welcome to your ToDo List!", false],
      ["Tap the + button to add a new task.", false],
      ["Swipe a task to the left to delete it.", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
