import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Trashscreen extends StatelessWidget {
  const Trashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trash"),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon:  const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Trash"),
          ],
        ),
      ),
    );
  }
}
