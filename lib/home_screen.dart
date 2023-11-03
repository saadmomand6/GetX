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
        children: [
          Card(
            child: ListTile(
              title: const Text('this is for my dailog alert'),
              subtitle: const Text('this is for my dailog alert'),
              onTap: () {
                Get.defaultDialog(
                  title: 'GetX Dailog',
                  titlePadding: const EdgeInsets.only(top: 10),
                  //middleText: 'this is middle text of default dailog',
                  content: const Column(
                    children: [
                      Text('dathis is content text of default dailogta')
                    ],
                  ),
                  contentPadding: const EdgeInsets.all(10),
                  //built in
                  // textConfirm: 'confirm dailog',
                  // textCancel: 'cancel dailog',
                  //custom
                  confirm: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('confirm dailog')),
                  cancel: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('cancel dailog')),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('this is for my bottom sheet'),
              subtitle: const Text('this is for my bottom sheet'),
              onTap: () {
                Get.bottomSheet(Container(
                  color: Colors.pink,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text('light mode'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text('dark mode'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'saad khan',
            'how are you',
            snackStyle: SnackStyle.FLOATING,
            icon: const Icon(Icons.abc),
            onTap: (snack) {},
            mainButton: TextButton(
                onPressed: () {}, child: const Text('getx main button')),
            backgroundColor: Colors.yellow,
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: const Icon(Icons.adjust),
      ),
    );
  }
}
