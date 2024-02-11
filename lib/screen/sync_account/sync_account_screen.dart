import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screen/sync_account/sync_controller.dart';
import 'package:note_app/screen/sync_account/sync_widget.dart';

class SyncAccount extends StatelessWidget {
  const SyncAccount({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(syncaccountcontroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sync Account"),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon:  const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body:  syncaccountwidget(),
    );
  }
}
