import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    print("INIT STATE");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("DID CHANGE DEPENDECIES");
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("DID UPDATE WIDGET");
  }

  @override
  void dispose() {
    print("DISPOSE");
    super.dispose();
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("BUILD");
    return Scaffold(
      appBar: AppBar(title: Text("Statefull Counter")),
      body: Center(
        child: Text(count.toString(), style: TextStyle(fontSize: 40)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
