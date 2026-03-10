import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pekan3/view/home_pages.dart';
import 'package:getx_pekan3/view/my_home_page.dart';
import 'package:getx_pekan3/view/text_speech_page.dart';
import 'package:getx_pekan3/view/home_view.dart';

void main() {
  // runApp(MyApp());
  runApp(GetMaterialApp(home: MyHomePage()));
}

class MyApp extends StatelessWidget {
  // final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
      home: MyHomePage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   final c = Get.find<CounterController>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Obx(
//           () => Text('ANGKA ${c.counter}', style: TextStyle(fontSize: 35)),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => c.changeTheme(),
//       ),
//     );
//   }
// }
