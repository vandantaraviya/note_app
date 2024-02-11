import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/viewnote/viewnote_controller.dart';
import 'package:note_app/screen/viewnote/viewnote_widget.dart';

class ViewNote extends StatelessWidget {
  final int? index;
  String? title;
  String? note;
  var save;
   ViewNote({super.key,this.save,this.index,this.title,this.note,});

  @override
  Widget build(BuildContext context) {
    Get.put(ViewNotecontroller());
    return datashow(title!,note!,save!,context);
  }
}
