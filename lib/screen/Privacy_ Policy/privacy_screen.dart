import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/Privacy_%20Policy/privacy_widget.dart';

class MyPrivacy extends StatelessWidget {
  const MyPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Policy"),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon:  Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Privacy(),
    );
  }
}
