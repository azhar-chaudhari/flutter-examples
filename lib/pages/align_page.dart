import 'package:flutter/material.dart';

class AlignPage extends StatefulWidget {
  const AlignPage({super.key});

  @override
  State<AlignPage> createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Align"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Example 1: Align Top Left
              Container(
                color: Colors.blue,
                height: 100,
                width: 200,
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Top Left'),
                ),
              ),
              const SizedBox(height: 20),

              // Example 2: Align Center
              Container(
                color: Colors.red,
                height: 100,
                width: 200,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text('Center'),
                ),
              ),
              const SizedBox(height: 20),

              // Example 3: Align Bottom Right
              Container(
                color: Colors.green,
                height: 100,
                width: 200,
                child: const Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Bottom Right'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
