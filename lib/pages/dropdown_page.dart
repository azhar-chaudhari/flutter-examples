import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  const DropdownPage({super.key});

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  String dropdownvalue = 'Android';

  var items = [
    'Android',
    'IOS',
    'Flutter',
    'Node',
    'Java',
    'Python',
    'PHP',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Dropdown"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: DropdownButton(
                focusColor: Theme.of(context).colorScheme.inversePrimary,
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                hint: const Text(
                  "Please choose a langauage",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
          ),
        ));
  }
}
