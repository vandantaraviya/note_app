import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/edit/edit_controller.dart';
import 'package:note_app/screen/edit/edit_widget.dart';

class Editscreen extends StatelessWidget {
  final int? index;
  final String title;
  final String note;
  var edit;
  Editscreen({super.key, this.edit,required this.title,required this.note, this.index,});

  @override
  Widget build(BuildContext context) {
    Get.put(Editcontroller());
    return dataadd(title, note,edit!);
  }
}
