import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/home/note_controller.dart';
import 'package:note_app/screen/home/note_widget.dart';

import '../../service/internet_connectivity.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ConnectionManagerController controller = Get.find<ConnectionManagerController>();
    Get.put(NoteController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Notes"),
      ),
      body: Obx(
        () => GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              controller.connectionType.value == 1 ? notedatashow() : controller.connectionType.value == 2 ? notedatashow() : Intenet(),
            ],
          ),
        ),
      ),
      floatingActionButton: flotingAcctionButton(),
      drawer: drawer(context),
    );
  }
}
