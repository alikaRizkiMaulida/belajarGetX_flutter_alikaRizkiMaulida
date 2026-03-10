import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_pekan3/controllers/text_controller.dart';

class TextSpeechPage extends StatelessWidget {
  final textController = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Speech")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: textController.textC,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Masukkan teks",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(TextSpeechPage());
              },
              child: Text("Ke Text Page"),
            ),
          ],
        ),
      ),
    );
  }
}
