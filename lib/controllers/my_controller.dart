import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  var text = ''.obs;
  void increment() {
    count++;
  }

  void reset() {
    count.value = 0;
  }

  void changeText(String value) {
    text.value = value;
  }

  @override
  void onInit() {
    super.onInit();
    //ever
    ever(count, (value) {
      print("Ever -> count berubah jadi $value");
    });

    //ever all
    everAll([count, text], (value) {
      print("Ever all -> salah satu berubah");
    });
    //once
    once(count, (value) {
      print("once -> hanya pertama berubah");
    });
    //debounce (3 detik)
    interval(text, (value) {
      print("debounce -> cuser berhenti mengetik : $value");
    }, time: Duration(seconds: 3));

    //interval
    interval(count, (value) {
      print("interval -> dinpanggil setiap 3 detik berubah");
    }, time: Duration(seconds: 3));
  }
}
