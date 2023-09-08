import 'package:flutter/material.dart';

class ToggleButtonPage extends StatefulWidget {
  const ToggleButtonPage({super.key});

  @override
  State<ToggleButtonPage> createState() => _ToggleButtonPageState();
}

class _ToggleButtonPageState extends State<ToggleButtonPage> {
  List<bool> isSelected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("ToggleButton"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ToggleButtons(
                isSelected: isSelected,
                children: const [
                  Icon(Icons.home),
                  Icon(Icons.settings),
                  Icon(Icons.person)
                ],
                onPressed: (int index) => {
                  setState(
                    () => isSelected[index] = !isSelected[index],
                  )
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
