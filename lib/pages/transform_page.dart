import 'package:flutter/material.dart';
import 'dart:math';

class TransformPage extends StatefulWidget {
  const TransformPage({super.key});

  @override
  State<TransformPage> createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Blank"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Example 1: Rotate Widget
              Transform.rotate(
                angle: pi / 4,
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  child: const Center(child: Text('Rotate')),
                ),
              ),
              const SizedBox(height: 20),

              // Example 2: Scale Widget
              Transform.scale(
                scale: 1.5,
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                  child: const Center(child: Text('Scale')),
                ),
              ),
              const SizedBox(height: 20),

              // Example 3: Translate Widget
              Transform.translate(
                offset: const Offset(30, 0),
                child: Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                  child: const Center(child: Text('Translate')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
