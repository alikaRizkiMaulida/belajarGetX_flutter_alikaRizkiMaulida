import 'package:get/get.dart';

class CounterController extends GetxController {
  // var counter = 0.obs;
  int counterHello = 0;
  int counterRusydi = 0;
  int counterArion = 0;

  void incrementHello() {
    counterHello++;
    update(["halloo"]);
  }

  void incrementRusydi() {
    counterRusydi++;
    update(["Rusydi"]);
  }

  void incrementArion() {
    counterArion++;
    update(["Arion"]);
  }

  // var isDark = false.obs;

  // void changeTheme() => isDark.value = !isDark.value;

  // void increment() => counter + 1;
  // void decrement() => counter - 1;
}
