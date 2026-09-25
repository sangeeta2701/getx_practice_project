import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/my_controller.dart';

// ignore: must_be_immutable
class StateMangmentScreen extends StatelessWidget {
  StateMangmentScreen({super.key});
  
  //if init property is not used in GetX<Type of Controller> then
  //create this instance of controller as follows
MyController myController = Get.put(MyController());
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
            GetX<MyController>(
              // init: MyController(),
              builder: (controller){
                // return Text("The value is ${controller.count.value}", style: TextStyle(fontSize: 25),);
                return Text("The value is ${myController.count}", style: TextStyle(fontSize: 25),);
              }),
              SizedBox(height:20),
              ElevatedButton(onPressed: (){
                //if instance of controller is not called at top
                // Get.find<MyController>().incremnet(); 

                myController.incremnet();
              }, child: Text("Increment"))
          ],
        ),
      ),
      
    );
  }
}