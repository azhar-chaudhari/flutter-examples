import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  String dropdownvalue = 'Profile';

  var items = [
    'Profile',
    'Settings',
    'Account',
    'Go Premium',
    'Logout',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Text"),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: const Text('TextButton'),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: const Text(
                'Flat Button',
                style: TextStyle(color: Colors.white, fontSize: 13.0),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
            style: ElevatedButton.styleFrom(
                elevation: 12.0,
                textStyle: const TextStyle(color: Colors.white)),
            child: const Text('Elevated Button'),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.person),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            child: const Text(
              "Outlined Button",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          IconButton(
            splashColor: Colors.yellow,
            icon: const Icon(Icons.code),
            color: Colors.green,
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButton(
            focusColor: Colors.green,
            value: dropdownvalue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(
                  items,
                  style: const TextStyle(
                    color: Colors.green,
                  ),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text("Profile"),
                value: 1,
              ),
              const PopupMenuItem(
                child: Text("Account"),
                value: 2,
              ),
              const PopupMenuItem(
                child: Text("Settings"),
                value: 1,
              ),
              const PopupMenuItem(
                child: Text("About GFG"),
                value: 1,
              ),
              const PopupMenuItem(
                child: Text("Go Premium"),
                value: 1,
              ),
              const PopupMenuItem(
                child: Text("Logout"),
                value: 1,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.green[300],
              minimumSize: const Size(88, 36),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Button with icon ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.phone,
                  size: 24.0,
                ),
              ],
            ),
          )
        ])));
  }
}
