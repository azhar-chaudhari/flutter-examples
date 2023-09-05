import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  const TextPage({super.key});

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Text"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: const Text(
                'This is simple text',
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "This is a sample long text overflow: TextOverflow.ellipsis ",
                  style: TextStyle(fontSize: 22),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "This is a sample long text overflow: TextOverflow.clip",
                  style: TextStyle(fontSize: 22),
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  softWrap: false,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "This is a sample long text overflow: TextOverflow.fade",
                  style: TextStyle(fontSize: 22),
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  softWrap: false,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "This is text - font size 8 ",
                  style: TextStyle(
                    fontSize: 8,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "This is text - font size 12 ",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "This is text - font size 16 ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "This is text - font size 20 ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "This is text - font size 24 ",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "This is text - font size 30 ",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "Color text -  ",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "Color text -  ",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "Color text -  ",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "Color text -  ",
                  style: TextStyle(
                    color: Colors.yellow,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "Color text - font weght bold  ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "Text - font style italic  ",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "Text - font style underline  ",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "Text - font style spacing  ",
                  style: TextStyle(
                    letterSpacing: -1.0,
                    wordSpacing: 5.0,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "Text - shadow  ",
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Colors.blue,
                        blurRadius: 10.0,
                        offset: Offset(5.0, 5.0),
                      ),
                      Shadow(
                        color: Colors.red,
                        blurRadius: 10.0,
                        offset: Offset(-5.0, 5.0),
                      ),
                    ],
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: const Text(
                  "Text - custom font  ",
                  style: TextStyle(
                    fontFamily: 'Courgette',
                    fontSize: 20,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "Text Styling - body large  ",
                  style: Theme.of(context).textTheme.bodyLarge,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "Text Styling - body medium  ",
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "Text Styling - body small  ",
                  style: Theme.of(context).textTheme.bodySmall,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "display large  ",
                  style: Theme.of(context).textTheme.displayLarge,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "display medium  ",
                  style: Theme.of(context).textTheme.displayMedium,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "display small  ",
                  style: Theme.of(context).textTheme.displaySmall,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "headline large  ",
                  style: Theme.of(context).textTheme.headlineLarge,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "headline medium  ",
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "headline small  ",
                  style: Theme.of(context).textTheme.headlineSmall,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "label large  ",
                  style: Theme.of(context).textTheme.labelLarge,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "label medium  ",
                  style: Theme.of(context).textTheme.labelMedium,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "label small  ",
                  style: Theme.of(context).textTheme.labelSmall,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "title large  ",
                  style: Theme.of(context).textTheme.titleLarge,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "title medium  ",
                  style: Theme.of(context).textTheme.titleMedium,
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "title small  ",
                  style: Theme.of(context).textTheme.titleSmall,
                )),
          ],
        ),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
