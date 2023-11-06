import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  var heading;
   ScreenOne({ this.heading, super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX ${Get.arguments[0]}'),
      ),
      body: Column(
        children: [
          const Text('screen one'),
          Container(
            height: Get.height * .1,
            color: Colors.amber,
            child: const  Center(
              child: Text('data'),
            ),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('this button is for GetX back navigation')),
          )
        ],
      ),
    );
  }
}
