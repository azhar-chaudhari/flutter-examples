import 'package:flutter/material.dart';

class TweenAnimationBuilderPage extends StatefulWidget {
  const TweenAnimationBuilderPage({super.key});

  @override
  State<TweenAnimationBuilderPage> createState() =>
      _TweenAnimationBuilderPageState();
}

class _TweenAnimationBuilderPageState extends State<TweenAnimationBuilderPage> {
  double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0; // Toggle opacity value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("TweenAnimationBuilder "),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          duration: const Duration(seconds: 1),
          tween: Tween<double>(begin: 0.0, end: _opacity),
          builder: (BuildContext context, double opacity, Widget? child) {
            return Opacity(
              opacity: opacity,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Animated Text',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleOpacity,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
