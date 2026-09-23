import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/student.dart';

// ignore: must_be_immutable
class StateMangmentScreen extends StatelessWidget {
  StateMangmentScreen({super.key});
  // var student = Student();

  //for making the entire class observable
  final student = Student(name: "tom", age: 25).obs;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Mangemnet"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=> Text("Name is:  ${student.value.name}", style: TextStyle(fontSize: 25),)),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              //if individual variable is observable
            //  student.name.value = student.name.value.toUpperCase();

            //for making teh entire class observable
            student.update((student){
              student!.name = student.name.toString().toUpperCase();
            });


            }, child: Text("Upper")),
          ],
        ),
      ),
      
    );
  }
}