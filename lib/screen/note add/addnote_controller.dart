import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Addnotecontroller extends GetxController {
  TextEditingController title = TextEditingController();
  TextEditingController note = TextEditingController();
  DatabaseReference database = FirebaseDatabase.instance.ref("Note");

  Future<void> insertData() async {
    String? key = database.push().key;
    await database.child(key!).set({
      "title": title.text,
      "note": note.text,
    }).whenComplete(() {
      Get.back();
      update(["AddNote"]);
      title.clear();
      note.clear();
    });
  }
}
