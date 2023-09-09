import 'package:flutter/material.dart';

class OffstagePage extends StatefulWidget {
  const OffstagePage({super.key});

  @override
  State<OffstagePage> createState() => _OffstagePageState();
}

class _OffstagePageState extends State<OffstagePage> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Offstage"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Example 1: Toggle Offstage Visibility
              Offstage(
                offstage: isHidden,
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  child: const Center(child: Text('Toggle Visibility')),
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isHidden = !isHidden;
                  });
                },
                child: const Text('Toggle Visibility'),
              ),
              const SizedBox(height: 20),

              // Example 2: Offstage with Hidden Text
              const Offstage(
                offstage: true,
                child: Text('This text is hidden'),
              ),
              const SizedBox(height: 20),

              // Example 3: Offstage with Visible Text
              const Offstage(
                offstage: false,
                child: Text('This text is visible'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
