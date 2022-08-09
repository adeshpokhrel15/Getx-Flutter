import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstamngment/Navigation%20Routes/HomePage.dart';

class NavigationRoutesUnNamed extends StatelessWidget {
  // const NavigationRoutesUnNamed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Routes UnNamed'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => HomePage());
                  },
                  child: const Text('Navigation Routes'),
                )
              ]),
        ));
  }
}
