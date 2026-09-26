import 'package:get/get.dart';

// class MyController extends GetxController{
//   //idividual variables are obervable
//   // var student = Student();
//   // void convertToUpperCase(){
//   //   student.name.value = student.name.value.toUpperCase();
//   // }  

// //entire calss is observable
//   var student = Student(name: "Tom", age: 25).obs;
//   void convertToUpperCase(){
//     student.update((student){
//       student!.name = student.name.toString().toUpperCase();
//     });
//   }
// } 


//simple state management without using anything reactive to use lifecycle methods 
class MyController extends GetxController {
  var count= 0;
  void incremnet()async{
    await Future<int>.delayed(Duration(seconds: 5));
    count++;
    update(); //will update the count variable on UI which use it
  }

  void cleanUpTask(){
    print("Cleanup task");
  }

  @override
  void onInit() {
    print("Init Called");
    super.onInit();
    incremnet();
  }

  @override
  void onClose() {
    cleanUpTask();
    super.onClose();
  }

}