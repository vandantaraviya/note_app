import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../service/Authentication.dart';

// ignore: camel_case_types
class syncaccountcontroller extends GetxController {

  User? user;
  bool isAuth = false;


  Future<void> googleauth() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    bool auth = await googleSignIn.isSignedIn();
    if (isAuth == false) {
      user = await Authentication.signInWithGoogle();
      print('--------------------------------------$user-----------------------------------');
      print('------------------------------------$user!.email-------------------------------');
      print('----------------------------------$user!.displayName-------------------------');
      isAuth = true;
    }
    update();
  }
}