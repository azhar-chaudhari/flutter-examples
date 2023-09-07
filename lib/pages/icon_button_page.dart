import 'package:flutter/material.dart';

class IconButtonPage extends StatefulWidget {
  const IconButtonPage({super.key});

  @override
  State<IconButtonPage> createState() => _IconButtonPageState();
}

class _IconButtonPageState extends State<IconButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("IconButton"),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(children: [
            IconButton(
              icon: const Icon(
                Icons.add,
              ),
              color: Colors.green,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.add,
              ),
              color: Colors.green,
              iconSize: 50,
              onPressed: () {},
            ),
            Ink(
                decoration: const ShapeDecoration(
                  color: Colors.lightBlue,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.add,
                  ),
                  color: Colors.white,
                  iconSize: 50,
                  onPressed: () {},
                )),
            IconButton(
              icon: const Icon(
                Icons.add,
              ),
              color: Colors.green,
              splashColor: Colors.blue,
              iconSize: 50,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.bluetooth),
              color: Colors.grey,
              highlightColor: Colors.red,
              hoverColor: Colors.green,
              focusColor: Colors.purple,
              splashColor: Colors.yellow,
              disabledColor: Colors.amber,
              iconSize: 48,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.add,
              ),
              tooltip: 'Add new Item (tooltip)',
              color: Colors.green,
              splashColor: Colors.blue,
              iconSize: 50,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.add,
              ),
              color: Colors.green,
              iconSize: 50,
              onPressed: () {},
            ),
            const Text("Add new Item"),
            IconButton(
              icon: const Icon(
                Icons.add,
              ),
              color: Colors.green,
              tooltip: 'Alignment.bottomRight (tooltip)',
              iconSize: 50,
              alignment: Alignment.bottomRight,
              onPressed: () {},
            ),
          ]),
        )));
  }
}
