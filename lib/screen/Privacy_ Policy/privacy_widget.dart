import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
Widget Privacy() {
  return SafeArea(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: Get.width,
              child: const Text(' 1. Standard Notes Standard Notes is a simple, elegant, and secure note-taking app that is fully encrypted. Your notes are encrypted on your device using end-to-end encryption with the key only known to you. Standard Notes is an open-source app that can be used for free or with a subscription plan to unlock more features.',style: TextStyle(fontSize: 15),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: Get.width,
              child: const  Text('2. Simplenote Simplenote is a free note-taking app with strong features such as sync across devices, shared notes, and version history. Simplenote notes are stored on Simplenote’s servers and encrypted with SSL encryption for maximum security.',style: TextStyle(fontSize: 15),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: Get.width,
             child:const Text('3. Saferoom Saferoom is a note-taking app that specializes in encrypting notes for use with other apps. It integrates with popular apps such as Evernote, OneNote, and Google Keep. Saferoom uses industry-standard encryption to secure notes, meaning that only the user has access to the notes.',style: TextStyle(fontSize: 15),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: Get.width,
              child:const Text('In conclusion, there are various secure encrypted note-taking apps to choose from to ensure the privacy and security of personal notes. Whether it’s a free or subscription service, these apps are designed to guarantee that notes remain private and secure, with end-to-end encryption and multi-device support. Choose an app that works best for your needs and rest assured knowing that your private notes are truly private. In short, a Privacy Policy URL is the link to the location where your Privacy Policy is posted. Because privacy laws require you to display a Privacy Policy, a great way to comply with this is to provide a URL to your policy somewhere where anyone can locate it and access it at any time.',style: TextStyle(fontSize: 15),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: Get.width,
              child:const Text("Similarly, app developers who want to work with Facebook, Apple or other popular platforms are often required to enter the URL for their Privacy Policy when registering the app. In most cases, you'll want to host your own Privacy Policy to easily update it and retain control over it. There are two main ways to do this: Adding the URL as a link in your website footer Adding the URL as a link within your mobile app's navigation menu and app store listing",style: TextStyle(fontSize: 15),),
            ),
          ),
        ],
      ),
    ),
  );
}


