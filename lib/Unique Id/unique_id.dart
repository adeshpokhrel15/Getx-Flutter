import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstamngment/Unique%20Id/Controller.dart';

class UniqueId extends StatelessWidget {
  Controller controller = Get.put(Controller());
  UniqueId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unique Id'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<Controller>(
                id: 'Counter',
                builder: (controller) {
                  return Text('The value is ${controller.count}');
                }),
            ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: const Text('Increment')),
            ElevatedButton(
                onPressed: () {
                  controller.decrement();
                },
                child: const Text('Decrement')),
          ],
        ),
      ),
    );
  }
}
