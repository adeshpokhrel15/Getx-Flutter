import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstamngment/State%20Management/Student.dart';

class OBXCustomClass extends StatelessWidget {
  var student = Student();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('OBX Custom Class'),
        ),
        body: Center(
          child: Column(
            children: [
              Obx(() => Text(
                    'Name: ${student.name.value}',
                    style: const TextStyle(fontSize: 20),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    student.name.value = student.name.value.toUpperCase();
                  },
                  child: const Text('UpperCase Letter')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    student.name.value = student.name.value.toLowerCase();
                  },
                  child: const Text('LowerCase Letter'))
            ],
          ),
        ));
  }
}
