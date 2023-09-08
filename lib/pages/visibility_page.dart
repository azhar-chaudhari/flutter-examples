import 'package:flutter/material.dart';

class VisibilityPage extends StatefulWidget {
  const VisibilityPage({super.key});

  @override
  State<VisibilityPage> createState() => _VisibilityPageState();
}

class _VisibilityPageState extends State<VisibilityPage> {
  bool isVisible = true; // Initial visibility is set to true

  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible; // Toggle visibility
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Visibility"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible:
                    isVisible, // Controls the visibility based on the condition
                child: const Text(
                  'Hello, Flutter!',
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: toggleVisibility,
                child: const Text('Toggle Visibility'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
