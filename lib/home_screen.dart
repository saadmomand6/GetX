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
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'saad khan',
            'how are you',
            snackStyle: SnackStyle.FLOATING,
            icon: const Icon(Icons.abc),
            onTap: (snack) {},
            mainButton: TextButton(onPressed: (){},
            child: const  Text('getx main button')),
            backgroundColor: Colors.yellow,
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: const Icon(Icons.adjust),
      ),
    );
  }
}
