import 'package:get/get.dart';
import 'package:note_app/service/internet_connectivity.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConnectionManagerController>(
            () => ConnectionManagerController());
  }
}