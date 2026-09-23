import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/state_managment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //  initialRoute: '/',

    //  defaultTransition: Transition.zoom,
    //  getPages: [
    //   GetPage(name: '/', page:()=> CustomNavigation()),
    //   GetPage(name: '/home', page:()=> HomeScreen()),
    //   // GetPage(name: '/nextScreen', page:()=> NextScreen(), transition: Transition.leftToRight),

    //   //while specifying the screen name we can pass the parmeter/value as well
    //   GetPage(name: '/nextScreen/:someValue', page:()=> NextScreen(), transition: Transition.leftToRight)

    //  ],
    // );
    

    //when there's unknown route
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/x',

     home: StateMangmentScreen(),
    );
  }
}
