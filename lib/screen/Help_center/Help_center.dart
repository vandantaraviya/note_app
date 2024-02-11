import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/Help_center/Helpcenter_controller.dart';
import 'Helpcenter_widget.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Helpcentercontroller());
    return Showhelp();
  }
}





