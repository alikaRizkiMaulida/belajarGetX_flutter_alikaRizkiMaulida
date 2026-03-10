import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pekan3/controllers/my_controller.dart';

class MyHomePage extends StatelessWidget {
  final MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Workers Demo")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            /// DISPLAY COUNT
            Obx(
              () => Text(
                "Count: ${controller.count}",
                style: TextStyle(fontSize: 24),
              ),
            ),

            SizedBox(height: 20),

            /// BUTTON INCREMENT
            ElevatedButton(
              onPressed: controller.increment,
              child: Text("Tambah Count"),
            ),

            SizedBox(height: 20),

            /// TEXTFIELD
            TextField(
              decoration: InputDecoration(
                labelText: "Ketik sesuatu...",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: controller.reset,
                ),
              ),
              onChanged: controller.changeText,
            ),
          ],
        ),
      ),
    );
  }
}
