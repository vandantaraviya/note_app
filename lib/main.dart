import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/splash%20screen/splash_screen.dart';
import 'package:note_app/service/Authentication.dart';
import 'package:note_app/service/Controller_binding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Authentication.firebaseIns();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinding(),
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}