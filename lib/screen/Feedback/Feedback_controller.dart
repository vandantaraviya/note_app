// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:get/get.dart';
//
// class  Feedbackcontroller extends GetxController{
//   TextEditingController feedback = TextEditingController();
//   DatabaseReference ref = FirebaseDatabase.instance.ref("Feedback");
//
//   Future<void> feedbackdata() async {
//     String? key = ref.push().key;
//     await ref.child(key!).set({
//       "Feedback": feedback.text,
//     }).whenComplete(() {
//       Get.back();
//       update();
//       feedback.clear();
//     });
//   }
//
//
// }