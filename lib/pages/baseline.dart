import 'package:flutter/material.dart';

class BaselinePage extends StatefulWidget {
  const BaselinePage({super.key});

  @override
  State<BaselinePage> createState() => _BaselinePageState();
}

class _BaselinePageState extends State<BaselinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Baseline"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Example 1: Baseline with Text
              const Baseline(
                baseline: 50.0,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  'Baseline Text',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),

              // Example 2: Baseline with Icon
              const Baseline(
                baseline: 50.0,
                baselineType: TextBaseline.alphabetic,
                child: Icon(Icons.star, size: 36, color: Colors.orange),
              ),
              const SizedBox(height: 20),

              // Example 3: Baseline with Custom Widget
              Baseline(
                baseline: 50.0,
                baselineType: TextBaseline.alphabetic,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),

              // Example 4: Multiple Baseline Widgets
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Baseline(
                    baseline: 50.0,
                    baselineType: TextBaseline.alphabetic,
                    child: Text('A', style: TextStyle(fontSize: 24)),
                  ),
                  SizedBox(width: 20),
                  Baseline(
                    baseline: 50.0,
                    baselineType: TextBaseline.alphabetic,
                    child: Text('B', style: TextStyle(fontSize: 18)),
                  ),
                  SizedBox(width: 20),
                  Baseline(
                    baseline: 50.0,
                    baselineType: TextBaseline.alphabetic,
                    child: Text('C', style: TextStyle(fontSize: 36)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
