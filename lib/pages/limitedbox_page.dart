import 'package:flutter/material.dart';

class LimitedBoxPage extends StatefulWidget {
  const LimitedBoxPage({super.key});

  @override
  State<LimitedBoxPage> createState() => _LimitedBoxPageState();
}

class _LimitedBoxPageState extends State<LimitedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("LimitedBox"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Example 1: LimitedBox with Maximum Width
              LimitedBox(
                maxWidth: 150.0,
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  width: 200,
                  child: const Center(child: Text('Limited Width')),
                ),
              ),
              const SizedBox(height: 20),

              // Example 2: LimitedBox with Maximum Height
              LimitedBox(
                maxHeight: 100.0,
                child: Container(
                  color: Colors.red,
                  height: 200,
                  width: 100,
                  child: const Center(child: Text('Limited Height')),
                ),
              ),
              const SizedBox(height: 20),

              // Example 3: LimitedBox with Maximum Width and Height
              LimitedBox(
                maxWidth: 120.0,
                maxHeight: 120.0,
                child: Container(
                  color: Colors.green,
                  height: 150,
                  width: 150,
                  child: const Center(child: Text('Limited Width and Height')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
