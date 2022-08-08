import 'package:flutter/material.dart';
import 'package:get/get.dart';

class bottomSheetBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ButtomSheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                    child: Wrap(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.wb_incandescent),
                      title: const Text('Light Theme'),
                      onTap: () => Get.changeTheme(ThemeData.light()),
                    ),
                    ListTile(
                      leading: const Icon(Icons.wb_incandescent_outlined),
                      title: const Text('Dark Theme'),
                      onTap: () => Get.changeTheme(ThemeData.dark()),
                    )
                  ],
                )));
              },
              child: const Text('Show BottomSheet'),
            ),
          ],
        ),
      ),
    );
  }
}
