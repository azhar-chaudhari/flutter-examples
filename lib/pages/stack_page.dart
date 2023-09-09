import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Stack"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Example 1: Stacking Widgets
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Text('Top Left'),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Text('Bottom Right'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Example 2: Overlay Images
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: Stack(
                  children: [
                    Image.asset('assets/images/eaters.jpg'),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Image.asset('assets/images/icon.png',
                          width: 50, height: 50),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Example 3: Layered Cards
              Stack(
                alignment: Alignment.center,
                children: [
                  const Card(
                    color: Colors.red,
                    child: SizedBox(
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Card(
                    color: Colors.yellow,
                    child: Container(
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    child: Container(
                      width: 100,
                      height: 100,
                    ),
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
