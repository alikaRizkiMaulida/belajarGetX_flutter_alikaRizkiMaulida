import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_pekan3/controllers/count_controller.dart';

class HomePages extends StatelessWidget {
  // const HomePage({super.key});

  final countC = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    print("BUILD HOME");
    return Scaffold(
      appBar: AppBar(title: Text("Getx Counter")),
      body: Center(
        child: GetBuilder<CountController>(
          builder: (controller) {
            return Text(
              controller.count.toString(),
              style: TextStyle(fontSize: 40),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countC.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
