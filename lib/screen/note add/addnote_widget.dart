import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/note%20add/addnote_controller.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

// ignore: non_constant_identifier_names
Widget Textfiledtitle() {
  return GetBuilder<Addnotecontroller>(
    builder: (controller) => TextField(
      maxLines: 1,
      controller: controller.title,
      decoration: const InputDecoration(
          hintText: "Your Note Title", border: OutlineInputBorder()),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget TextfiledNote() {
  return GetBuilder<Addnotecontroller>(
    builder: (controller) => TextField(
      maxLines: 20,
      controller: controller.note,
      decoration: const InputDecoration(
          hintText: "Start typing", border: OutlineInputBorder()),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Roundbutton() {
  return GetBuilder<Addnotecontroller>(
    id: 'AddNote',
    builder: (controller) => RoundedLoadingButton(
      // ignore: sort_child_properties_last
      child: const Text('ADD', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
      color: Colors.indigo,
      onPressed: () {
        controller.insertData();
      },
      controller: RoundedLoadingButtonController(),
    ),
  );
}
