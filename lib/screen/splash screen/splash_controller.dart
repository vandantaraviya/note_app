import 'dart:async';

import 'package:get/get.dart';
import 'package:note_app/screen/home/note_screen.dart';

class Splashscreencontroller extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 5), () {
      Get.off(const NoteScreen());
    });
    super.onInit();
  }
}
