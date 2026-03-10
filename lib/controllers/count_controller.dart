import 'package:get/get.dart';

class CountController extends GetxController {
  int count = 0;

  @override
  void onInit() {
    super.onInit();
    print("GET INIT");
  }

  @override
  void onReady() {
    super.onReady();
    print("GETX READY");
  }

  @override
  void onClose() {
    print("GETX CLOSE");
    super.onClose();
  }

  void increment() {
    count++;
    update();
  }
}
