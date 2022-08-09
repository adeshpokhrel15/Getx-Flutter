import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
              children: const [Text('Home Page')]),
        ));
  }
}
