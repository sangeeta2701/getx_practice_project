import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snackbar',

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Snackbar")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Show Snackbar"),
              onPressed: () {
                Get.snackbar(
                  "Snackbar Title",
                  "This will be snackbar message",
                  snackPosition: SnackPosition.BOTTOM,
                //    titleText:
                // Text("Another Title"),
                // messageText:
                // Text("Another Message", style: TextStyle(color: Colors.white)),
                colorText:
                Colors.white,
                backgroundColor:
                Colors.black,
                borderRadius:
                20,
                margin:
                EdgeInsets.all(10),
                // maxWidth:
                // 500,
                animationDuration:Duration(milliseconds:3000), //duration of the animation
                backgroundGradient: LinearGradient(colors: [Colors.red, Colors.red.shade300, Colors.red.shade100]),
                borderColor: Colors.black,
                borderWidth:2,
                boxShadows:[
                  BoxShadow(color: Colors.yellow,
                  offset: Offset(5,1),
                  blurRadius:8,
                  spreadRadius:20)
                ],
                dismissDirection: DismissDirection.horizontal,
                forwardAnimationCurve: Curves.bounceInOut, //animation whne snakbar appears
                duration:Duration(milliseconds: 5000), //How long teh snakbar should visible on teh screen
                icon:Icon(Icons.send, color:Colors.white),
                shouldIconPulse: false, //stop teh icon animation
                mainButton: TextButton(child: Text("Retry", style: TextStyle(color: Colors.black)),onPressed: (){}),
                onTap:(val){
                  print("Snackbar Tapped"); //this onTap used when you want to perform some task by clicking on snackbar
                },
                overlayBlur: 5, //blur the button whenever sbackbar is visible
                overlayColor: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), //add padding on teh snackbar contents
                showProgressIndicator: true,
                progressIndicatorBackgroundColor: Colors.deepPurple,
                progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                reverseAnimationCurve: Curves.bounceInOut, //animation when snackbar get hided
                snackbarStatus: (val){
                  print(val); //used to ckeck snack bar is open or closed
                },

                //whenever we use the userInputForm all teh previous defined buttons and snackbar properties(text.icon etc) will be ignored and only form would be visible

                userInputForm: Form(child: Row(
                  children:[
                    Expanded(child: TextField(),)
                  ]
                ),)
                );
               
              },
            ),
          ],
        ),
      ),
    );
  }
}
