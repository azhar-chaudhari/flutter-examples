import 'package:flutter/material.dart';

class TooltipPage extends StatefulWidget {
  const TooltipPage({super.key});

  @override
  State<TooltipPage> createState() => _TooltipPageState();
}

class _TooltipPageState extends State<TooltipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Tooltip"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Tooltip(
            message: 'This is a tooltip!',
            child: ElevatedButton(
              onPressed: () {
                // Add your action here when the button is pressed.
              },
              child: const Text('Hover Me'),
            ),
          ),
        ),
      ),
    );
  }
}
