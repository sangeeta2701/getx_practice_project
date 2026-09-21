import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("This is home screen",style: TextStyle(color: Colors.purpleAccent, fontSize: 25),),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                
              ),
              onPressed: (){}, child: Text("Next Screen", style: TextStyle(color: Colors.white),)),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                
              ),
              onPressed: (){
                // Get.back();
                //send data to previous screen
                Get.back(result: "This data is coming from home screen");
              }, child: Text("Back to Main", style: TextStyle(color: Colors.white),)),
              // SizedBox(height: 20,),
              // Text("${Get.arguments}", style: TextStyle(color: Colors.black, fontSize: 20),)
          ],
        ),
      ),
    );
  }
}