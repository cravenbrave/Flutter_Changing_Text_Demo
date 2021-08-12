// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './TextPage.dart';
import './TextControl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int tapIndex = 0;

  void _nextPage() {
    setState(() {
      if (tapIndex < t.length - 1) {
        tapIndex++;
      }
    });
  }

  List<String> t = [
    'Flutter is an open-source UI software development kit created by ' +
        'Google. It is used to develop cross platform applications ' +
        'for Android, iOS, Linux, Mac, Windows, Google Fuchsia,' +
        ' and the web from a single codebase.' +
        '\n\nReference: Flutter-Wiki',
    'The first version of Flutter was known as codename "Sky" and ' +
        'ran on the Android operating system. It was unveiled at the ' +
        '2015 Dart developer summit with the stated intent of being ' +
        'able to render consistently at 120 frames per second.' +
        '\n\nReference: Flutter-Wiki',
    'On March 3, 2021, Google released Flutter 2 during an online Flutter ' +
        'Engage event. This major update brought official support for ' +
        'web-based applications with new CanvasKit renderer and web ' +
        'specific widgets, early-access desktop application support for ' +
        'Windows, macOS, and Linux and improved Add-to-App APIs.' +
        '\n\nReference: Flutter-Wiki',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter demo: changing text'),
        ),
        body: tapIndex < t.length - 1 ?
        Container(
          child: Column(
            children: [
              TextPage(t[tapIndex]),
              TextControl(_nextPage),
            ],
          ),
        ) : TextPage(t[tapIndex]),
      ),
    );
  }
}
