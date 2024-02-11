import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:note_app/screen/splash%20screen/splash_controller.dart';

class Splashscreen extends StatelessWidget {
  Splashscreen({super.key});

  final Splashscreencontroller splashController =
      Get.put(Splashscreencontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 200,
            //   child: Lottie.asset('assets/lottie/note.json'),
            // ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
