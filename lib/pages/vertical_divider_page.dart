import 'package:flutter/material.dart';

class VerticalDividerPage extends StatefulWidget {
  const VerticalDividerPage({super.key});

  @override
  State<VerticalDividerPage> createState() => _VerticalDividerPageState();
}

class _VerticalDividerPageState extends State<VerticalDividerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("VerticalDivider"),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 200,
              color: Colors.blue,
              child: const Center(
                child: Text('Left Content'),
              ),
            ),
            const VerticalDivider(
              thickness: 1, // Thickness of the vertical line
              color: Colors.black, // Color of the vertical line
              indent: 20, // Space before the line
              endIndent: 20, // Space after the line
            ),
            Container(
              width: 100,
              height: 200,
              color: Colors.red,
              child: const Center(
                child: Text('Right Content'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
