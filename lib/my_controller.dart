import 'package:get/get.dart';
import 'package:getx_practice/student.dart';

class MyController extends GetxController{
  //idividual variables are obervable
  // var student = Student();
  // void convertToUpperCase(){
  //   student.name.value = student.name.value.toUpperCase();
  // }  

//entire calss is observable
  var student = Student(name: "Tom", age: 25).obs;
  void convertToUpperCase(){
    student.update((student){
      student!.name = student.name.toString().toUpperCase();
    });
  }
}