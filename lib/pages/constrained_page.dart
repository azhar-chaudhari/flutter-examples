import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatefulWidget {
  const ConstrainedBoxPage({super.key});

  @override
  State<ConstrainedBoxPage> createState() => _ConstrainedBoxPageState();
}

class _ConstrainedBoxPageState extends State<ConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Row"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ConstrainedBox(
                constraints:
                    const BoxConstraints.expand(height: 100, width: 100),
                child: Container(
                  color: Colors.green,
                ), //Container widget
              ),
              const SizedBox(
                height: 20,
              ),
              ConstrainedBox(
                constraints:
                    const BoxConstraints.expand(height: 200, width: 200),

                child: const Text(
                  "ConstrainedBox is a widget that imposes additional constraints on its child. While you can set only the width and the height of a widget using SizedBox widget, with ConstrainedBox, you can also set the minimum and maximum values of the widget's width and height thanks to the usage of BoxConstraints. ",
                  style: TextStyle(
                    fontSize: 15,
                    overflow: TextOverflow.visible,
                  ),
                ), //Text
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
              ),
              ConstrainedBox(
                constraints:
                    const BoxConstraints.expand(height: 200, width: 200),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.blue,
                  child: const Text(
                    "ConstrainedBox is a widget that imposes additional constraints on its child. While you can set only the width and the height of a widget using SizedBox widget, with ConstrainedBox, you can also set the minimum and maximum values of the widget's width and height thanks to the usage of BoxConstraints. ",
                    style: TextStyle(
                      fontSize: 15,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ), //Text
              )
            ],
          ),
        ),
      ),
    );
  }
}
