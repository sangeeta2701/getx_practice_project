import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/home_screen.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({super.key});

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()async{
              // Get.to(HomeScreen(),
              
              // fullscreenDialog: true, //if wanted to make the full screen as dialog box
              // //add teh animation
              // transition: Transition.zoom,
              // // duration: Duration(milliseconds: 4000),
              // curve: Curves.bounceInOut,
              
              // );
              //go to the next screen but not able to come back to the previous screen
              // Get.off(HomeScreen());

              // //go to next screen and discard all the previous screens
              // Get.offAll(HomeScreen()); 


              //go to next screen with some data
              // Get.to(HomeScreen(), arguments: "Data from navigation screen");

              //go to the next screen and receive data sent from home screen
              var data = await Get.to(HomeScreen());
              print("The received data is: $data");

            }, child: Text("Go To Home"))
          ],
        ),
      ),
    );
  }
}