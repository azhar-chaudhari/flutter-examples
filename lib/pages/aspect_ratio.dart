import 'package:flutter/material.dart';

class AspectRatioPage extends StatefulWidget {
  const AspectRatioPage({super.key});

  @override
  State<AspectRatioPage> createState() => _AspectRatioPageState();
}

class _AspectRatioPageState extends State<AspectRatioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Aspect Ratio"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Example 1: 16:9 Aspect Ratio
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.blue,
                  child: const Center(child: Text('16:9 Aspect Ratio')),
                ),
              ),
              const SizedBox(height: 20),

              // Example 2: 4:3 Aspect Ratio
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Text('4:3 Aspect Ratio')),
                ),
              ),
              const SizedBox(height: 20),

              // Example 3: 1:1 Aspect Ratio (Square)
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  color: Colors.green,
                  child: const Center(child: Text('1:1 Aspect Ratio (Square)')),
                ),
              ),
              const SizedBox(height: 20),

              // Example 4: 3:2 Aspect Ratio
              AspectRatio(
                aspectRatio: 3 / 2,
                child: Container(
                  color: Colors.orange,
                  child: const Center(child: Text('3:2 Aspect Ratio')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
