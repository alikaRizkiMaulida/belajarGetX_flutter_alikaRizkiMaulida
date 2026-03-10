import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pekan3/controllers/counter_controller.dart';

class HomeView extends StatelessWidget {
  final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Counter")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<CounterController>(
            id: "halloo",
            builder: (c) {
              print("rebuild hello");
              return Text("Hello ${c.counterHello}");
            },
          ),
          GetBuilder<CounterController>(
            id: "Rusydi",
            builder: (c) {
              print("rebuild rusydi");
              return Text("Hello ${c.counterRusydi}");
            },
          ),
          GetBuilder<CounterController>(
            id: "Arion",
            builder: (c) {
              print("rebuild arion");
              return Text("Hello ${c.counterArion}");
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => counterC.incrementHello(),
            child: Text("Tambah Hello"),
          ),
          ElevatedButton(
            onPressed: () => counterC.incrementRusydi(),
            child: Text("Tambah Rusydi"),
          ),
          ElevatedButton(
            onPressed: () => counterC.incrementArion(),
            child: Text("Tambah Arion"),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => counterC.increment(),
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
