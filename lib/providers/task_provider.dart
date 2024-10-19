import 'package:flutter/foundation.dart';

class TaskProvider with ChangeNotifier {
  int _taskCount = 0;

  int get taskCount => _taskCount;

  void addTask() {
    _taskCount++;
    notifyListeners(); // method provided by the ChangeNotifier class, widgets are now externally listing to the changes so they dont't have to be statefull
  }

  void removeTask() {
    if (_taskCount > 0) {
      _taskCount--;
      notifyListeners();
    }
  }
}
