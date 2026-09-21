import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Get.bottomSheet(Container(
                child: Wrap(
                  children: [
                    ListTile(
                      leading: Icon(Icons.wb_sunny_outlined),
                      title: Text("Light Theme"),
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                      },
                    ),
                     ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text("Dark Theme"),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                    )
                  ],
                ),
              ),
              // barrierColor: Colors.greenAccent.shade100,//color of teh entire screen when we click teh buttom sheet
              backgroundColor: Colors.white, //background color of bottom sheet
              isDismissible: true, //close teh sheet clicking outside of teh sheet
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 2,
                )
              ),
              enableDrag: false, //stop dragging of the bottom sheet, by default its true
              ); 
              
            }, child: Text("Bottom Sheet"))
          ],
        ),
      ),
    );
  }
}