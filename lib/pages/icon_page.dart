import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  const IconPage({super.key});

  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Icon"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Icon(Icons.add),
              const Icon(
                Icons.add,
                size: 70,
              ),
              const Icon(
                Icons.add,
                color: Colors.green,
                size: 70,
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: const Column(
                  children: <Widget>[
                    Icon(Icons.search, size: 40),
                    Text('Search')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
