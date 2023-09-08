import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({super.key});

  @override
  State<SnackBarPage> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("SnackBar"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('This is a SnackBar!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                  color: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text(
                    'Show SnackBar',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text(
                      'This is a SnackBar!',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                    duration: const Duration(milliseconds: 100),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                  color: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text(
                    'Show SnackBar',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _snackSample() => const SnackBar(
        content: Text(
          "You have a message!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue,
      );
}
