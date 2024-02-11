

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShareApp extends StatelessWidget {
  const ShareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      title: const Text("Share App"),
      leading: IconButton(
        onPressed: (){
          Get.back();
        },
        icon:  const Icon(Icons.arrow_back_ios_new),
      ),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Share app"),
          ],
        ),
      ),
    );
  }
}
