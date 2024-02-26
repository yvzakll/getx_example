import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlankPage extends StatelessWidget {
  const BlankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 30,
            color: Colors.amber,
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("GERİİİİ"))
        ],
      ),
    );
  }
}
