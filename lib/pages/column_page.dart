import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  const ColumnPage({super.key});

  @override
  State<ColumnPage> createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Column"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 100,
              width: 200,
              child: const Center(
                child: Text('Example 1'),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.red,
              height: 100,
              width: 200,
              child: const Center(
                child: Text('Example 2'),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.green,
              height: 100,
              width: 200,
              child: const Center(
                child: Text('Example 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
