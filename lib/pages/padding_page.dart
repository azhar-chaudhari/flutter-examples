import 'package:flutter/material.dart';

class PaddingPage extends StatefulWidget {
  const PaddingPage({super.key});

  @override
  State<PaddingPage> createState() => _PaddingPageState();
}

class _PaddingPageState extends State<PaddingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Padding"),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              color: Colors.green,
              child: Container(
                width: 150,
                height: 50,
                color: Colors.white70,
                child: const Text(''),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.fromLTRB(20, 30, 10, 15),
              color: Colors.green,
              child: Container(
                width: 150,
                height: 50,
                color: Colors.white70,
                child: const Text(''),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(left: 50),
              color: Colors.green,
              child: Container(
                width: 150,
                height: 50,
                color: Colors.white70,
                child: const Text(''),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(left: 20, right: 10),
              color: Colors.green,
              child: Container(
                width: 150,
                height: 50,
                color: Colors.white70,
                child: const Text(''),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              color: Colors.green,
              child: Container(
                width: 150,
                height: 50,
                color: Colors.white70,
                child: const Text(''),
              ),
            ),
          ]),
        )));
  }
}
