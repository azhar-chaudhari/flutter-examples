import 'package:flutter/material.dart';

class MarginPage extends StatefulWidget {
  const MarginPage({super.key});

  @override
  State<MarginPage> createState() => _MarginPageState();
}

class _MarginPageState extends State<MarginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Margin"),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.green,
              child: Container(
                width: 150,
                margin: const EdgeInsets.all(10),
                height: 50,
                color: Colors.white70,
                child: const Text('margin all 10'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              decoration: const BoxDecoration(color: Colors.green),
              child: const Text(
                "only top margin 24",
                style: TextStyle(fontSize: 32),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: const BoxDecoration(color: Colors.green),
              child: const Text(
                "horizontal: 20, vertical: 12",
                style: TextStyle(fontSize: 32),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: const BoxDecoration(color: Colors.green),
              child: const Text(
                " vertical: 12",
                style: TextStyle(fontSize: 32),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.green,
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: 150,
                height: 50,
                color: Colors.white70,
                child: const Text('20 10 20 10'),
              ),
            ),
          ]),
        )));
  }
}
