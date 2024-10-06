import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String result = await task2();
  task3(result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration fiveSec = Duration(seconds: 5);
  String result;
  await Future.delayed(fiveSec, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String string) {
  String result = 'task 3 data';
  print('Task 3 complete $string');
}
