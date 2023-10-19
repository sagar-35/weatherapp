
import 'dart:io';

void main(){
  performTasks();
}

void performTasks() async {
  task1();
  String result = await task2();
  task3(result);
}

void task1(){
  String result =" Task1 data ";
  print("Task1 completed");
}
Future task2()async{
  Duration duration = Duration(seconds: 5);

  String result = "Empty Value";

  await Future.delayed(duration,(){
    result = "Task2 data";
    print("Task2 completed");
});
  return result;
}
void task3(String value){
  String result =" Task3 data ";
  print("Task3 completed with $value");
}

