import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localization extends StatefulWidget {
  const Localization({super.key});

  @override
  State<Localization> createState() => _LocalizationState();
}

class _LocalizationState extends State<Localization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text('English')),
                  const SizedBox(
            width: 30,
          ),
              TextButton(onPressed: () {
                 Get.updateLocale(const Locale('ur', 'PK'));
              }, child: const Text('Urdu'))
            ],
          )
        ],
      ),
    );
  }
}
