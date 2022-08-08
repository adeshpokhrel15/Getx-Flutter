import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogBar extends StatelessWidget {
  const DialogBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Dialog Box",
                  middleText: "This is Dialog Box",
                  backgroundColor: Colors.lightBlue,
                  radius: 10,
                  textCancel: "NO",
                  cancelTextColor: Colors.white,
                  textConfirm: "YES",
                  confirmTextColor: Colors.green,
                  onCancel: () {},
                  onConfirm: () {},
                );
              },
              child: const Text("Show Dialog Box"),
            ),
          ],
        ),
      ),
    );
  }
}
