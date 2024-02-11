import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/home/note_screen.dart';

class Editcontroller extends GetxController {
  DatabaseReference database = FirebaseDatabase.instance.ref("Note");

  Future<void> updateproduct(
      String title,
      String note,
      var edit,
      ) async {
    Map<String, String> x = {
      "title": title,
      "note": note,
    };
    database.ref.child(edit).update(x);
    Get.offAll(NoteScreen());
    update();
  }
}
