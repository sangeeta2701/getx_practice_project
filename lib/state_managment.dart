import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class StateMangmentScreen extends StatelessWidget {
  var count = 0.obs;

  StateMangmentScreen({super.key});
  void increment(){
    count++;
  }

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
            Obx(()=> Text("Count value is:  $count", style: TextStyle(fontSize: 25),)),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              increment();
            }, child: Text("Increment")),
          ],
        ),
      ),
      
    );
  }
}