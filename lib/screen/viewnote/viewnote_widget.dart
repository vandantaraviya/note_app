import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/edit/edit_screen.dart';
import 'package:note_app/screen/viewnote/viewnote_controller.dart';
import 'package:social_share/social_share.dart';

Widget datashow(String title, String note, var save, BuildContext context) {
  return GetBuilder<ViewNotecontroller>(
      id: 'update',
      builder: (controller) {
        TextEditingController titlecontroller =
            TextEditingController(text: title);
        TextEditingController notecontroller =
            TextEditingController(text: note);

        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined)),
            title: Text(title.toString()),
            actions: [
              PopupMenuButton(
                  itemBuilder: (context){
                    return [
                       PopupMenuItem<int>(
                        value: 0,
                        child: InkWell(
                          onTap: (){
                            SocialShare.shareWhatsapp(note);
                          },
                          child:  Row(
                            children: [
                              Icon(Icons.share,color: Colors.indigo,size: 15,),
                              SizedBox(width: 15,),
                              Text("Share",style: TextStyle(color: Colors.indigo,fontSize: 15)),
                            ],
                          ),
                        )
                      ),
                      PopupMenuItem<int>(
                          value: 1,
                          child: InkWell(
                            onTap: (){
                              controller.confirmDialog(
                                title,
                                note,
                                save,
                                context,
                              );
                            },
                            child:  Row(
                              children: [
                                Icon(Icons.delete,color: Colors.indigo,size: 15,),
                                SizedBox(width: 15,),
                                Text("Delete",style: TextStyle(color: Colors.indigo,fontSize: 15)),
                              ],
                            ),
                          )
                      ),
                      PopupMenuItem<int>(
                          value: 2,
                          child: InkWell(
                            onTap: (){
                              Get.off(Editscreen(
                                        title: title,
                                        note: note,
                                        edit: save,
                                      ));
                            },
                            child:  Row(
                              children: [
                                Icon(Icons.edit,color: Colors.indigo,size: 15,),
                                SizedBox(width: 15,),
                                Text("Edit",style: TextStyle(color: Colors.indigo,fontSize: 15)),
                              ],
                            ),
                          )
                      ),
                    ];
                  },
              ),
            ],
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SizedBox(
                    width: Get.width,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Note:-  ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            width: Get.width,
                            child: TextField(
                              minLines: 1,
                              maxLines: 35,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: notecontroller,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}

