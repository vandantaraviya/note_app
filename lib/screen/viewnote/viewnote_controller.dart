import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/home/note_screen.dart';

class ViewNotecontroller extends GetxController{
  DatabaseReference database = FirebaseDatabase.instance.ref("Note");

  Future<void> delete(
      String title,
      String note,
      var key,
      ) async {
    database.ref.child(key).remove();
    Get.offAll(const NoteScreen());
    update();
  }

  Future<dynamic> confirmDialog(String title, String note, var key, BuildContext context,) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.indigo,
            icon: const Icon(
              Icons.info,
              color: Colors.grey,
            ),
            title: const Text(
              'Are you sure you want to delete?',
              style: TextStyle(color: Colors.white),
            ),
            content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        delete(title, note, key);
                        update();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: const SizedBox(
                        width: 60,
                        child: Text(
                          'Yes',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Get.back();
                        update();
                      },
                      style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: const SizedBox(
                        width: 60,
                        child: Text(
                          'No',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ]),
          );
        });
  }


// final format = DateFormat("yyyy-MM-dd");
  // final format1 = DateFormat("HH:mm");
  // DateTimeField(
  //   format: controller.format,
  //   onShowPicker: (context, currentValue) {
  //     return showDatePicker(
  //       context: context,
  //       firstDate: DateTime(1900),
  //       initialDate: currentValue ?? DateTime.now(),
  //       lastDate: DateTime(2100),
  //     );
  //   },
  // ),
  // DateTimeField(
  // format: controller.format1,
  // onShowPicker: (context, currentValue) async {
  // final time = await showTimePicker(
  // context: context,
  // initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
  // );
  // return DateTimeField.convert(time);
  // },
  // ),
}