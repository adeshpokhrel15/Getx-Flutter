import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SMReactive extends StatelessWidget {
  var count = 0.obs;

  @override
  void increment() {
    count++;
  }

  SMReactive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management Reactive'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text(
                'Count: $count',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: const Text("Count Increase"))
          ],
        ),
      ),
    );
  }
}
