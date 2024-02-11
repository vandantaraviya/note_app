
import 'dart:math';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/edit/edit_screen.dart';
import 'package:note_app/screen/home/note_screen.dart';
import 'package:note_app/screen/note%20add/addnote_screen.dart';
import 'package:note_app/screen/viewnote/viewnote_screen.dart';
import '../../colors/colors.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';


class NoteController extends GetxController {
  DatabaseReference database = FirebaseDatabase.instance.ref("Note");
  final UrlLauncherPlatform launcher = UrlLauncherPlatform.instance;

  Future<void> launchInBrowser(String url) async {
    if (!await launcher.launch(
      url,
      useSafariVC: false,
      useWebView: false,
      enableJavaScript: false,
      enableDomStorage: false,
      universalLinksOnly: false,
      headers: <String, String>{},
    )) {
      throw Exception('Could not launch $url');
    }
  }

  // ignore: non_constant_identifier_names
  Future<dynamic> Feedbackdailog(BuildContext context,) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.indigo,
            icon: const Icon(
              Icons.feedback,
              color: Colors.grey,
            ),
            title:  Column(
              children: [
                const Text("Feedback",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                const SizedBox(height: 15,),
                RatingBar.builder(
                  initialRating: 0,
                  minRating: 0,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  onRatingUpdate: (rating) {
                    if (kDebugMode) {
                      print(rating);
                    }
                  },
                ),
              ],
            ),
            content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Get.offAll(const NoteScreen());
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

  Future<void> share() async {
    await FlutterShare.share(
        title: 'sticky notes',
        text: 'sticky notes',
        linkUrl: 'https://play.google.com/store/apps/details?id=com.eco.note',
        chooserTitle: 'sticky notes',
    );
  }

  Future<void> delete(
    String title,
    String note,
    var key,
  ) async {
    database.ref.child(key).remove();
    Get.back();
    update();
  }


  getRandomColor() {
    Random random = Random();
    return backgroundColors[random.nextInt(backgroundColors.length)];
  }

  Future<dynamic> confirmDialog(String title, String note, var key, BuildContext context) {
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

  void navitgettonoteadd()  {

    Get.to(const NoteAdd());
  }

  void navitgettoedit(int index, String title, String note, var key){
    Get.off(Editscreen(index: index,title: title, note: note,edit: key,));
  }

  void navitgettoviewnote(
    int index,
    String title,
    String note,
      var key,
  ) {
    Get.to(ViewNote(index: index,title: title,note: note,save: key,));
  }
}
