// import 'package:get/state_manager.dart';

class Student{

  //can be made observable by making individual variabless Rx(Reactive) or
  // by making the entire calss observable. 

  //individual variables Rx
  // var name = "Tom".obs;
  // var age = 25.obs;


  //to make the entire class observable
  var name;
  var age;
  Student({this.name, this.age});
}