import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Container"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.green,
              child: const Text(" container widget",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              margin: const EdgeInsets.all(25),
              child: const Text("text inside a container m:25",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              child: const Text("container m:20 p:30",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 3),
              ),
              child: const Text("decoration border red w:3",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 3),
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.green,
                    offset: Offset(6.0, 6.0),
                  ),
                ],
              ),
              child: const Text("border,shadow c:green,offset 6.0,6.0",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              transform: Matrix4.rotationX(0.5),
              child: const Text("transform rotationx 0.1",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              transform: Matrix4.rotationY(0.5),
              child: const Text("transform rotationy 0.5",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(0.1),
              child: const Text("transform rotationz 0.1",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              margin: const EdgeInsets.all(25),
              alignment: Alignment.bottomCenter,
              child: const Text("Alignment.bottomCenter",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              margin: const EdgeInsets.all(25),
              alignment: Alignment.bottomLeft,
              child: const Text("Alignment.bottomLeft",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              margin: const EdgeInsets.all(25),
              alignment: Alignment.bottomRight,
              child: const Text("Alignment.bottomRight",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              margin: const EdgeInsets.all(25),
              alignment: Alignment.center,
              child: const Text("Alignment.center",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              margin: const EdgeInsets.all(25),
              alignment: Alignment.centerLeft,
              child: const Text("Alignment.centerLeft",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              margin: const EdgeInsets.all(25),
              alignment: Alignment.centerRight,
              child: const Text("Alignment.centerRight",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              margin: const EdgeInsets.all(25),
              alignment: Alignment.topCenter,
              child: const Text("Alignment.topCenter",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              margin: const EdgeInsets.all(25),
              alignment: Alignment.topLeft,
              child: const Text("Alignment.topLeft",
                  style: TextStyle(fontSize: 25)),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              margin: const EdgeInsets.all(25),
              alignment: Alignment.topRight,
              child: const Text("Alignment.topRight",
                  style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}
