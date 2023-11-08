import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_controler.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // Get.put(CounterController()) is a dependency injection
  // Obx(() {} is used to listen
  final LoginController logincontroller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Home View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: logincontroller.emailcontroller.value,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextFormField(
              controller: logincontroller.passwordcontroller.value,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Obx((){
              return InkWell(
                onTap: () {
                  logincontroller.loginApi();
                },
                child: Container(
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: logincontroller.loading.value ? const CircularProgressIndicator() : const Center(child: Text('login')),
                ),
              );
            } 
            )
          ],
        ),
      ),
    );
  }
}
