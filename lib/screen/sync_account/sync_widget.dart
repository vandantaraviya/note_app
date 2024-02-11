import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/sync_account/sync_controller.dart';

Widget syncaccountwidget(){
  return GetBuilder<syncaccountcontroller>(
      builder: (controller) => Column(
        children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: InkWell(
             onTap: () async {
              controller.googleauth();
             },
             child: Container(
               height: 60,
               width: Get.width,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Colors.indigo,
               ),
               child: Row(
                 children: [
                   SizedBox(height: 50,width: 50,child: Image.asset('assets/image/google.png')),
                    SizedBox(width: Get.width * 0.2,),
                   const Text('Sign In with Google',style: TextStyle(color: Colors.white,fontSize: 15,),),
                 ],
               ),
             ),
           ),
         ),
        ],
      ),
  );
}