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
                PopupMenuButton(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/eaters.jpg",
                      width: 50,
                    ),
                  ),
                  onSelected: (value) {
                    if (value == "profile") {
                      // add desired output
                    } else if (value == "settings") {
                      // add desired output
                    } else if (value == "logout") {
                      // add desired output
                    }
                  },
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    const PopupMenuItem(
                      value: "profile",
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.key),
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: "settings",
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(Icons.settings)),
                          Text(
                            'Settings',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: "logout",
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(Icons.logout)),
                          Text(
                            'Logout',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
