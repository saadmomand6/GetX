import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_screen.dart';
import 'package:getx/screen_one.dart';
import 'language_localization/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX',
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      translations: Languages(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/ScreenOne', page: () => ScreenOne()),
      ],
    );
  }
}
