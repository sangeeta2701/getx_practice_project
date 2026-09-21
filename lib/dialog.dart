import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDialogWidget extends StatefulWidget {
  const CustomDialogWidget({super.key});

  @override
  State<CustomDialogWidget> createState() => _CustomDialogWidgetState();
}

class _CustomDialogWidgetState extends State<CustomDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog"),),
      body: Center(child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          ElevatedButton(child: Text("Show Dialog"),
          onPressed:(){
            // Get.defaultDialog(); //this will show the default dialog

            //customize the dialog by styling
            Get.defaultDialog(
              title: "Dialog Title",
              titleStyle: TextStyle(fontSize: 25, fontWeight:FontWeight.w500),
              middleText: "This is middle text fo our dialog",
              middleTextStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              backgroundColor: Colors.pinkAccent.shade100,
              radius: 20,

              //to customize the middle text, Whenever we use thr content it will overrride teh value of middleText
              content: Row(children: [
                CircularProgressIndicator(),
                SizedBox(width: 20,),
                Expanded(child: Text("Data Loading...."),),
              ],),

              //default cancle & confirm button
              textCancel: "Cancel",
              cancelTextColor: Colors.white,
              textConfirm: "Confirm",
              confirmTextColor: Colors.pinkAccent,
              onCancel:(){},
              onConfirm: (){},
              buttonColor: Colors.pink.shade50,

              //customize the cancel and confirm button
              //it will override the default cancle and confirm 

              cancel: Text("Cancels",
              style: TextStyle(color: Colors.black),),
              confirm: Text("Confirms",
              style: TextStyle(color: Colors.black),),
              actions: [
                ElevatedButton(onPressed: (){
                  Get.back();
                }, child: Text("Action-1")),

                ElevatedButton(onPressed: (){
                  
                }, child: Text("Action-2")),
              ],
              barrierDismissible: false //to avoid closing dialog anywhere in teh screen
            );
          }),
        ]
      ),)
    );
  }
}