import 'package:flutter/material.dart';

class PlaceholderPage extends StatefulWidget {
  const PlaceholderPage({super.key});

  @override
  State<PlaceholderPage> createState() => _PlaceholderPageState();
}

class _PlaceholderPageState extends State<PlaceholderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Placeholder"),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Placeholder(
                color: Colors.blue,
                strokeWidth: 2.0,
                fallbackHeight: 100,
                fallbackWidth: 100,
              ),
              SizedBox(height: 20),
              Text('This is a Placeholder'),
            ],
          ),
        ),
      ),
    );
  }
}
