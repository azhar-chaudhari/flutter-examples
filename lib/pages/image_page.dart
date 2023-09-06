import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Image"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text("img boxfit.cover"),
              Container(
                constraints: const BoxConstraints.expand(height: 300),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/eaters.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text("img height:100,width:100"),
              Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/eaters.jpg",
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("img fit: BoxFit.fill"),
              Container(
                color: Colors.blue,
                child: Image.asset(
                  "assets/images/eaters.jpg",
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("img fit: BoxFit.fitWidth"),
                  Text("img fit: BoxFit.fitHeight"),
                  Text("img fit: BoxFit.contain"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "assets/images/eaters.jpg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "assets/images/eaters.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "assets/images/eaters.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("img fit: BoxFit.cover"),
                  Text("img fit: BoxFit.scaleDown"),
                  Text("img fit: BoxFit.none"),
                ],
              ),
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    "assets/images/eaters.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    "assets/images/eaters.jpg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    "assets/images/eaters.jpg",
                    fit: BoxFit.none,
                  ),
                ),
              ]),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" Alignment.topLeft"),
                  Text(" Alignment.topCenter"),
                  Text(" Alignment.topRight"),
                ],
              ),
              _topAlignment(),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(" Alignment.bottomLeft"),
                  Text(" Alignment.bottomCenter"),
                  Text(" Alignment.bottomRight"),
                ],
              ),
              _bottomAlignment(),
              const SizedBox(width: 10),
              _blendImage(),
              const SizedBox(width: 10),
              _blendImage2(),
              const SizedBox(width: 10),
              _qualityImage(),
              const SizedBox(width: 10),
              _textOnImage(),
              const SizedBox(width: 10),
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/eaters.jpg"),
                radius: 100,
              )
            ],
          ),
        ));
  }

  Widget _textOnImage() {
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/eaters.jpg"), fit: BoxFit.cover),
      ),
      child: const Center(
          child: Text(
        'Text',
        style: TextStyle(
            fontSize: 95, color: Colors.black, fontWeight: FontWeight.bold),
      )),
    );
  }

  Widget _topAlignment() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        color: Colors.blue,
        height: 66.7,
        width: 100,
        child: Image.asset(
          "assets/images/eaters.jpg",
          fit: BoxFit.none,
          alignment: Alignment.topLeft,
        ),
      ),
      const SizedBox(width: 10),
      Container(
        color: Colors.blue,
        height: 66.7,
        width: 100,
        child: Image.asset(
          "assets/images/eaters.jpg",
          fit: BoxFit.none,
          alignment: Alignment.topCenter,
        ),
      ),
      const SizedBox(width: 10),
      Container(
        color: Colors.blue,
        height: 66.7,
        width: 100,
        child: Image.asset(
          "assets/images/eaters.jpg",
          fit: BoxFit.none,
          alignment: Alignment.topRight,
        ),
      ),
    ]);
  }

  Widget _bottomAlignment() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        color: Colors.blue,
        height: 66.7,
        width: 100,
        child: Image.asset(
          "assets/images/eaters.jpg",
          fit: BoxFit.none,
          alignment: Alignment.bottomLeft,
        ),
      ),
      const SizedBox(width: 10),
      Container(
        color: Colors.blue,
        height: 66.7,
        width: 100,
        child: Image.asset(
          "assets/images/eaters.jpg",
          fit: BoxFit.none,
          alignment: Alignment.bottomCenter,
        ),
      ),
      const SizedBox(width: 10),
      Container(
        color: Colors.blue,
        height: 66.7,
        width: 100,
        child: Image.asset(
          "assets/images/eaters.jpg",
          fit: BoxFit.none,
          alignment: Alignment.bottomRight,
        ),
      ),
    ]);
  }

  Widget _blendImage() {
    return Container(
      constraints: const BoxConstraints.expand(height: 100),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.purple,
                colorBlendMode: BlendMode.lighten,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.purple,
                colorBlendMode: BlendMode.difference,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.purple,
                colorBlendMode: BlendMode.overlay,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.yellow,
                colorBlendMode: BlendMode.screen,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.purple,
                colorBlendMode: BlendMode.srcATop,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.purple,
                colorBlendMode: BlendMode.colorBurn,
              )),
        ],
      ),
    );
  }

  Widget _blendImage2() {
    return Container(
      constraints: const BoxConstraints.expand(height: 100),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.purple,
                colorBlendMode: BlendMode.color,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.purple,
                colorBlendMode: BlendMode.multiply,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.purple,
                colorBlendMode: BlendMode.darken,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.yellow,
                colorBlendMode: BlendMode.luminosity,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.purple,
                colorBlendMode: BlendMode.exclusion,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                color: Colors.purple,
                colorBlendMode: BlendMode.colorBurn,
              )),
        ],
      ),
    );
  }

  Widget _qualityImage() {
    return Container(
      constraints: const BoxConstraints.expand(height: 100),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                filterQuality: FilterQuality.high,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                filterQuality: FilterQuality.medium,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                filterQuality: FilterQuality.low,
              )),
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/eaters.jpg",
                filterQuality: FilterQuality.none,
              )),
        ],
      ),
    );
  }
}
