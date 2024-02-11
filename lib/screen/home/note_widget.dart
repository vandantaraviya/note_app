import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/Help_center/Help_center.dart';
import 'package:note_app/screen/Privacy_%20Policy/privacy_screen.dart';
import 'package:note_app/screen/home/note_controller.dart';
import '../sync_account/sync_account_screen.dart';

Widget drawer(BuildContext context){
  return GetBuilder<NoteController>(
      builder: (controller) => Drawer(
        backgroundColor: Colors.indigo,
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: const Text(
                 "Sync Account",style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.to(const SyncAccount());
                },
                leading: const Icon(Icons.sync,color: Colors.white,),
                trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.white,),
              ),
              ListTile(
                title: const Text(
                "More App",style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  const String toLaunch = 'https://play.google.com/store/search?q=sticky+notes&c=apps&hl=en-IN';
                 controller.launchInBrowser(toLaunch);
                },
                leading: const Icon(Icons.grid_view,color: Colors.white,),
                trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.white,),
              ),
              ListTile(
                title: const Text(
                 "Help Center",style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.to(const HelpCenter());
                },
                leading: const Icon(Icons.help,color: Colors.white,),
                trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.white,),
              ),
              ListTile(
                title: const Text(
                    "Feedback",style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  controller.Feedbackdailog(context);
                },
                leading: const Icon(Icons.stars,color: Colors.white,),
                trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.white,),
              ),
              ListTile(
                title: const Text(
                    "Share App",style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  controller.share();
                },
                leading: const Icon(Icons.share,color: Colors.white,),
                trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.white,),
              ),
              ListTile(
                title: const Text(
                    "Privacy Policy",style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Get.to(const MyPrivacy());
                },
                leading: const Icon(Icons.privacy_tip,color: Colors.white,),
                trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.white,),
              ),
            ],
          ),
        ),
      ),
  );
}

Widget appbar() {
  return GetBuilder<NoteController>(
    builder: (controller) => AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.edit),
        ),
      ],
    ),
  );
}

Widget flotingAcctionButton() {
  return GetBuilder<NoteController>(
    builder: (controller) => FloatingActionButton(
      onPressed: ()  {
        controller.navitgettonoteadd();
      },
      child: const Icon(Icons.add),
    ),
  );
}

Widget notedatashow() {
  return GetBuilder<NoteController>(
    builder: (controller) => Expanded(
      child: FirebaseAnimatedList(
        query: controller.database,
        itemBuilder: (context, snapshot, animation, index) {
          List<Object> data = [
            snapshot.child('title').value.toString(),
            snapshot.child('note').value.toString(),
          ];
          return Card(
            elevation: 3,
            color: controller.getRandomColor(),
            child: GestureDetector(
              onTap: () {
                controller.navitgettoviewnote(
                  index,
                  snapshot.child('title').value.toString(),
                  snapshot.child('note').value.toString(),
                  snapshot.key,
                );
              },
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Title:-  ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          data[0].toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                     Row(
                      children: [
                        Text("Note:-  "),
                      ],
                    ),
                    Text(
                      data[1].toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}


Widget searchbar(){
  return GetBuilder<NoteController>(
    builder: (controller) {
      TextEditingController searchbar = TextEditingController();
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: Get.width,
          child: TextField(
            autofocus: false,
            decoration:  InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: const Icon(Icons.search),
              labelText: 'Search Note',
              hintText: 'Search Note'
            ),
            controller: searchbar,
          ),
        ),
      );
    },
  );
}


// ignore: non_constant_identifier_names
Widget Intenet (){
  return  Center(
    child: Column(
      children: [
        Text("Connection Error",style: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.bold)),
        Text("Turn on Your Internet",style: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.bold)),
      ],
    )
  );
}