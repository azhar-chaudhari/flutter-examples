import 'package:flutter/material.dart';

class SizedBoxPage extends StatefulWidget {
  const SizedBoxPage({super.key});

  @override
  State<SizedBoxPage> createState() => _SizedBoxPageState();
}

class _SizedBoxPageState extends State<SizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("SizedBox"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                width: 150.0,
                height: 70.0,
                child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'SizedBox',
                      style: TextStyle(color: Colors.white),
                    ), //Text
                  ), //Center
                ), //Card
              ),
              SizedBox.fromSize(
                size: const Size(56, 56), // button width and height
                child: ClipOval(
                  child: Material(
                    color: Colors.orange, // button color
                    child: InkWell(
                      splashColor: Colors.green, // splash color
                      onTap: () {}, // button pressed
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.call), // icon
                          Text("Call"), // text
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ), //Container
                  //SizedBox Widget
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ) //Container
                ], //<Widget>[]
              ),
              SizedBox(
                width: 70,
                height: 70,
                child: ElevatedButton(
                  child: const Text('Button',
                      style: TextStyle(color: Colors.black)),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20, //This become the height of the container
                child: Container(
                  height: 100, //This height will be ignored
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
