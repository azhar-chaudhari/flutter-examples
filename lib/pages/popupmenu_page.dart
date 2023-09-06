import 'package:flutter/material.dart';

class PopupMenuPage extends StatefulWidget {
  const PopupMenuPage({super.key});

  @override
  State<PopupMenuPage> createState() => _PopupMenuPageState();
}

class _PopupMenuPageState extends State<PopupMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Popup Menu"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                PopupMenuButton(
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Android"),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text("IOS"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Node"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Java"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Python"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("PHP"),
                    ),
                  ],
                ),
                PopupMenuButton(
                  icon: const Icon(Icons.list),
                  offset: const Offset(0, 100),
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Android"),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text("IOS"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Node"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Java"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Python"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("PHP"),
                    ),
                  ],
                ),
                PopupMenuButton(
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: const ShapeDecoration(
                        shape: StadiumBorder(
                            side: BorderSide(color: Colors.black, width: 2))),
                    child: const Icon(Icons.list),
                  ),
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Android"),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text("IOS"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Node"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Java"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("Python"),
                    ),
                    const PopupMenuItem(
                      value: 1,
                      child: Text("PHP"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
