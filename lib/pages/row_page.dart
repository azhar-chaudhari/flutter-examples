import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  const RowPage({super.key});

  @override
  State<RowPage> createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Row"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Example 1: Basic Row
                  const Text('MainAxisAlignment.center:'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.blue,
                        height: 100,
                        width: 100,
                        child: const Center(child: Text('Blue')),
                      ),
                      Container(
                        color: Colors.red,
                        height: 100,
                        width: 100,
                        child: const Center(child: Text('Red')),
                      ),
                      Container(
                        color: Colors.green,
                        height: 100,
                        width: 100,
                        child: const Center(child: Text('Green')),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Example 2: Row with MainAxisAlignment
                  const Text('MainAxisAlignment.spaceBetween:'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        color: Colors.yellow,
                        height: 100,
                        width: 100,
                        child: const Center(child: Text('Yellow')),
                      ),
                      Container(
                        color: Colors.orange,
                        height: 100,
                        width: 100,
                        child: const Center(child: Text('Orange')),
                      ),
                      Container(
                        color: Colors.purple,
                        height: 100,
                        width: 100,
                        child: const Center(child: Text('Purple')),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Example 3: Row with CrossAxisAlignment
                  const Text('CrossAxisAlignment.end:'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        color: Colors.grey,
                        height: 100,
                        width: 100,
                        child: const Center(child: Text('Grey')),
                      ),
                      Container(
                        color: Colors.indigo,
                        height: 150,
                        width: 100,
                        child: const Center(child: Text('Indigo')),
                      ),
                      Container(
                        color: Colors.lime,
                        height: 75,
                        width: 100,
                        child: const Center(child: Text('Lime')),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Example 4: Evenly Distributed Space
                  const Text('MainAxisAlignment.spaceEvenly:'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          height: 100,
                          child: const Center(child: Text('Blue')),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          height: 100,
                          child: const Center(child: Text('Red')),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.green,
                          height: 100,
                          child: const Center(child: Text('Green')),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  const Text('Evenly Distributed Space'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
