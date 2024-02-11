import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/Help_center/Helpcenter_controller.dart';

// ignore: non_constant_identifier_names
Widget Showhelp() {
  return GetBuilder<Helpcentercontroller>(
    builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Help Center"),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("1. why do I have to sync my notes?",style: TextStyle(color: Colors.indigo,fontSize: 15,fontWeight: FontWeight.bold)),
              Text("When syncing will help you have a great experience:  ",style: TextStyle(color: Colors.indigo,fontSize: 12,fontWeight: FontWeight.bold)),
              Text("1. You can use notes and task checklists on many different devices.",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("2. You won't have to worry about data loss as all your data will be synced to your Google Drive account.",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("3. You can have all your notes and checklists on your new device by signing in with the same synced Google Drive account.",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              SizedBox(height: 20,),
              Text("2. How to sync notes?",style: TextStyle(color: Colors.indigo,fontSize: 15,fontWeight: FontWeight.bold)),
              Text("Sync to your Google Drive: ",style: TextStyle(color: Colors.indigo,fontSize: 12,fontWeight: FontWeight.bold)),
              Text("1. On your mobile device or tablet, open the Note app.",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("2. Click the on the top bar.",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("3. Click the 'Login' button.",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("4. Click 'Sync Now' button.",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              SizedBox(height: 20,),
              Text("3. How to get my data back?",style: TextStyle(color: Colors.indigo,fontSize: 15,fontWeight: FontWeight.bold)),
              Text("You will get your data back if you have done the sync feature. ",style: TextStyle(color: Colors.indigo,fontSize: 12,fontWeight: FontWeight.bold)),
              Text("1. Open Note application",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("2. Click the 'Sync' icon on the top bar or 'Select' settings=> Click 'Sync'.",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("3. Select 'Sign in with Google.",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("4. Enter Google drive account (The account you have selected to sync)",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text('5. Click "Sync now" to get the data back.',style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              SizedBox(height: 20,),
              Text("4. Why can't I use it on more than one device?",style: TextStyle(color: Colors.indigo,fontSize: 15,fontWeight: FontWeight.bold)),
              Text("Reasons you cannot use on many of your devices:",style: TextStyle(color: Colors.indigo,fontSize: 12,fontWeight: FontWeight.bold)),
              Text("1. You are not logged in to the same Google account on all your devices.",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("2. Click the on the top ba2. When you add a note or a checklist you do not press sync, so that note or checklist will not appear on other devices. Every time you add a note or checklist you need to click the sync icon button on the toolbar to sync. As such, you will use that note or checklist on all your devices.",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              SizedBox(height: 20,),
              Text("5. How do I change my account?",style: TextStyle(color: Colors.indigo,fontSize: 15,fontWeight: FontWeight.bold)),
              Text("Change account:",style: TextStyle(color: Colors.indigo,fontSize: 12,fontWeight: FontWeight.bold)),
              Text("1. Go to the Sync screen by pressing the sync button on the main screen or enter the settings",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("2. Click the 'Sign Out' button",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("3. Click the 'Login' button",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("4. Enter the account you want to use",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
              Text("5. Press the 'Sync Now' button",style: TextStyle(color: Colors.indigo,fontSize: 12,)),
            ],
          ),
          ),
        ),
      );
    },
  );
}
