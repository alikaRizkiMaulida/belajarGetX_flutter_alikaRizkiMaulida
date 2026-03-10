import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  late TextEditingController textC;

  @override
  void onInit() {
    super.onInit();
    textC = TextEditingController();
    print("TEXT INIT");
  }

  @override
  void onClose() {
    textC.dispose();
    print("TEXT DISPOSE");
    super.onClose();
  }
}
