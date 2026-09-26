import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/my_controller.dart';

// ignore: must_be_immutable
class StateMangmentScreen extends StatelessWidget {
   StateMangmentScreen({super.key});
  //create instance os controller
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
            GetBuilder<MyController>(
              //no need to initilize if inatance is created
              // init: MyController(),
              builder: (controller){
                return Text("The value is ${myController.count}", style: TextStyle(fontSize: 25),);
              }),
              SizedBox(height:20),
              ElevatedButton(onPressed: (){
                //if instance is created
                myController.incremnet();



                //if instance of controller is not created
                // Get.find<MyController>().incremnet();
              }, child: Text("Increment"))
          ],
        ),
      ),
      
    );
  }
}