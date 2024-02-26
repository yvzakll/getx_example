import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/sayac_controller.dart';
import 'package:flutter_application_1/pages/blank_page.dart';
import 'package:flutter_application_1/utils/language.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(), // your translations
      locale: Get.deviceLocale, //CİHAZ DİLİ NEYSE ONU YAP
      //Locale('tr', 'TR'), // translations will be displayed in that locale
      fallbackLocale: const Locale('en', 'UK'), // specify the
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  SayacController _controller = Get.put(SayacController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'.tr),
            Obx(
              () => Text(_controller.sayac.toString()),
            ),
            GetX<SayacController>(
              builder: (_controller2) => Text(_controller.sayac.toString()),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "2",
            onPressed: () {
              _controller.arttir();
              print(_controller.sayac);
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: "3",
            onPressed: () {
              _controller.azalt();
              print(_controller.sayac);
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: "1",
            foregroundColor: Get.isDarkMode ? Colors.amber : Colors.red,
            onPressed: () {
              Get.isDarkMode
                  ? Get.changeTheme(ThemeData.light())
                  : Get.changeTheme(ThemeData.dark());
            },
            child: const Icon(Icons.track_changes),
          ),
          FloatingActionButton(
            heroTag: "4",
            onPressed: () {
              Get.to(const BlankPage());
            },
            child: const Icon(Icons.door_front_door),
          ),
          FloatingActionButton(
            heroTag: "5",
            onPressed: () {
              Get.updateLocale(Get.locale == const Locale('tr', 'TR')
                  ? const Locale('en', 'US')
                  : const Locale('tr', 'TR'));
            },
            child: const Icon(Icons.door_front_door),
          ),
        ],
      ),
    );
  }
}
