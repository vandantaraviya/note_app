import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/note%20add/addnote_controller.dart';
import 'package:note_app/screen/note%20add/addnote_widget.dart';

class NoteAdd extends StatelessWidget {
  const NoteAdd({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Addnotecontroller());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("NOTE ADD"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Textfiledtitle(),
              const SizedBox(
                height: 10,
              ),
              TextfiledNote(),
              const SizedBox(
                height: 30,
              ),
              Roundbutton(),
            ],
          ),
        ),
      ),
    );
  }
}
