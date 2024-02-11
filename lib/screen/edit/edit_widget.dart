import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/edit/edit_controller.dart';
import 'package:note_app/screen/home/note_screen.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';


Widget editnotedata(String title,String note){
  TextEditingController titlecontroller = TextEditingController(text: title);
  TextEditingController notecontroller = TextEditingController(text: note);
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
      TextField(
        maxLines: 1,
        controller: titlecontroller,
        decoration: const InputDecoration(
            hintText: "Your Note Title", border: OutlineInputBorder()),
      ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            maxLines: 20,
            controller: notecontroller,
            decoration: const InputDecoration(
                hintText: "Start typing", border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 30,
          ),
          EditRoundbutton(),
        ],
      ),
    ),
  );
}


// ignore: non_constant_identifier_names
Widget EditRoundbutton() {
  return GetBuilder<Editcontroller>(
    id: 'AddNote',
    builder: (controller) => RoundedLoadingButton(
      // ignore: sort_child_properties_last
      child: const Text('UPDATE', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
      color: Colors.yellow,
      onPressed: () {
        Get.back();
      },
      controller: RoundedLoadingButtonController(),
    ),
  );
}



Widget dataadd(String title, String note, var edit,) {
  return GetBuilder<Editcontroller>(
    builder: (controller) {
      TextEditingController titlecontroller = TextEditingController(text: title);
      TextEditingController notecontroller = TextEditingController(text: note);
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Get.off(const NoteScreen());}, icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          centerTitle: true,
          title: Text(title.toString()),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 30, 
                ),
                TextField(
                  maxLines: 1,
                  controller: titlecontroller,
                  decoration: const InputDecoration(
                      hintText: "Your Note Title", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  maxLines: 25,
                  controller: notecontroller,
                  decoration: const InputDecoration(
                      hintText: "Start typing", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 30,
                ),
                RoundedLoadingButton(
                  // ignore: sort_child_properties_last
                  child: const Text('Update', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
                  color: Colors.indigo,
                  onPressed: () {
                   controller.updateproduct(titlecontroller.text, notecontroller.text,edit);
                  },
                  controller: RoundedLoadingButtonController(),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

