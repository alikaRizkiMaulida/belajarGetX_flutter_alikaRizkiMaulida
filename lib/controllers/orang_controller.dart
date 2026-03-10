import 'package:get/get.dart';
import 'package:getx_pekan3/models/orang.dart';

class OrangController extends GetxController {
  var orang = Orang(nama: "alika", umur: 19).obs;

  void ubahNamaKapital() {
    orang.update((val) {
      val!.nama = val.nama.toUpperCase();
    });
  }
}
