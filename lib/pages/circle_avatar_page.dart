import 'package:flutter/material.dart';

class CircleAvatarPage extends StatefulWidget {
  const CircleAvatarPage({super.key});

  @override
  State<CircleAvatarPage> createState() => _CircleAvatarPageState();
}

class _CircleAvatarPageState extends State<CircleAvatarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("CircleAvatar"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.greenAccent[400],
                radius: 100,
                child: const Text(
                  'CicleAvatar',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ), //Text
              ),
              const SizedBox(
                height: 20,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 115,
                child: CircleAvatar(
                  backgroundColor: Colors.greenAccent[100],
                  radius: 110,
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/icon.png'), //NetworkImage
                    radius: 100,
                  ), //CircleAvatar
                ), //CircleAvatar
              ),
              const SizedBox(
                height: 20,
              ),
              CircleAvatar(
                  backgroundColor: Colors.green,
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/icon.png",
                          fit: BoxFit.cover,
                        ),
                      ))),
              const SizedBox(
                height: 20,
              ),
              CircleAvatar(
                backgroundColor: Colors.greenAccent[400],
                child: const Text(
                  'Cicle',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ), //Text
              ),
              const SizedBox(
                height: 20,
              ),
              CircleAvatar(
                  backgroundColor: Colors.greenAccent[400],
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ) //Text
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
