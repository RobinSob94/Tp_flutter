import 'package:flutter/material.dart';
import 'dart:math';
import 'header.dart';
import 'footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> selectedChoices = [];
  Color headerColor = Colors.deepPurple;

  void onChoiceSelected(String choice) {
    setState(() {
      if (selectedChoices.contains(choice)) {
        selectedChoices.remove(choice);
      } else {
        selectedChoices.add(choice);
      }
    });
  }

  void changeHeaderColor() {
    setState(() {
      headerColor = getRandomColor();
    });
  }

  Color getRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Header(selectedChoices: selectedChoices, color: headerColor),
          ),
          Flexible(
            flex: 1,
            child: Footer(onChoiceSelected: onChoiceSelected),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: changeHeaderColor,
              child: Text('Changer la couleur'),
            ),
          ),
        ],
      ),
    );
  }
}
